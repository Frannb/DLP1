library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maq_semaforo is
	generic
	(t_default   : natural := 1;     -- tempo padrao
 	 t_travessia : natural := 33;	-- tempo pedestre --33
	 t_amarelo   : natural := 3; 	   -- tempo amarelo  -- 3
	 t_vermelho  : natural := 3; 	   -- tempo vermelho -- 3
	 Sem_carros  : natural := 10; 	-- tempo do ate liberar pedestre sensor sem carros -- 10
	 Com_carros  : natural := 30; 	-- tempo do ate liberar pedestre sensor com carros --30
	 --t_min_botao : natural := 99; 	-- tempo minimo para acionar botao pedestre -- 99
	 Max  		 : natural := 99; 	-- valor limite do contador -- 33
	 N_vias 		 : natural := 1; 		-- Numero de vias -- 1
	 N_bits		 : natural := 7);
		
	port
	(ena1seg  	    : in std_logic;
	 clk            : in std_logic;
	 reset			 : in std_logic;
 	 botao_pedestre : in std_logic;  -- botao pedestre
	 sensor_veiculos: in std_logic;  -- sensor dos veiculos
	 bip1, bip2     : out std_logic; -- alarme sonoro para deficiente
	 R_pedestre     : out std_logic; -- vermelho R_pedestre
	 G_pedestre     : out std_logic; -- verde R_pedestre
	 R_veiculos 	 : out std_logic; -- vermelho R_veiculos
	 Y_veiculos     : out std_logic; -- amarelo Y_veiculos
	 G_veiculos  	 : out std_logic; -- verde R_veiculos
	 Luz_faixa  	 : out std_logic; -- iluminaao da faixa de pedestre
	 count_saida  	 : out std_logic_vector(N_bits downto 0)); -- contador display
		
end entity;

architecture FRANCIN of maq_semaforo is
	type state is (GR1, GR_WAIT, GR2, YR, RG, RR);
	signal pr_state, nx_state : state;
	signal tempo : integer range 0 to Max;
	--signal count_out   : integer range 0 to Max;
	--attribute ENUM_ENCODING : string; --optional attribute
	--attribute ENUM_ENCODING of state : type is "sequential";
	constant t_travessia_vias : integer := (N_vias*t_travessia - t_vermelho);
	
begin

	------Lower section of FSM:------------
	process (clk, reset, ena1seg)
	variable count : integer range 0 to Max;
	begin
		if (reset = '1') then
			pr_state <= GR1;
			count := 0;
		elsif (rising_edge(clk) and ena1seg = '1') then
			count := count + 1;
			if (count >= tempo) then -- se for maior que o tempo_count vai pra zero
				pr_state <= nx_state;
				count := 0;
			end if;
		end if;
		--count_out <= count;
		count_saida <= std_logic_vector(to_unsigned(count, N_bits+1)); -- conversao do contador de saida
	end process;
	
	------Upper section of FSM:------------
	process (pr_state, botao_pedestre, sensor_veiculos) -- count_out
		begin	
		
	--default (pedestre tem apenas luz vermelha e verde)
	R_pedestre <= '0';
	R_veiculos <= '0';
	Y_veiculos <= '0';
	G_pedestre <= '0';
	G_veiculos <= '0';
	Luz_faixa  <= '0';
	Bip1 <= '0';
	Bip2 <= '0';
	tempo <= t_default; 
			
			case pr_state is
				when GR1 =>
					G_veiculos <= '1';
					R_pedestre <= '1';
					if (botao_pedestre = '1') then
						nx_state <= GR_WAIT;
					else
						nx_state <= GR1;
					end if;
					
-----------------------------------------------------------	
		
				when GR_WAIT =>
					G_veiculos <= '1';
					R_pedestre <= '1';
					if (botao_pedestre = '0') then
						nx_state <= GR2;
					else
						nx_state <= GR_WAIT;
					end if;
						
----------------------------------------------------------				
				when GR2 =>
					G_veiculos <= '1';
					R_pedestre <= '1';
					Luz_faixa <= '1';
					Bip1 <= '1';
					if (sensor_veiculos = '0') then
						tempo <= Sem_carros;
						nx_state <= YR;
					elsif (sensor_veiculos = '1') then	
						tempo <= Com_carros;
						nx_state <= YR;
					else
						nx_state <= GR2;
					end if;
						
----------------------------------------------------------	
				
				when YR =>
					Y_veiculos <= '1';
					R_pedestre <= '1';
					Luz_faixa <= '1';
					Bip1 <= '1';
					tempo <= t_amarelo;
					nx_state <= RG;
						
---------------------------------------------------------				
				
				when RG =>
					R_veiculos <= '1';
					G_pedestre <= '1';
					Luz_faixa <= '1';
					Bip2 <= '1';
					tempo <= t_travessia_vias;
					nx_state <= RR;
					
---------------------------------------------------------
				
				when RR =>
					R_veiculos <= '1';
					R_pedestre <= '1';
					tempo <= t_vermelho;
					nx_state <= GR1;
					
			end case;
		end process;
end architecture;