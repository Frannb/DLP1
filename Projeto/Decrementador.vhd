library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decrementador is
	generic
	(t_travessia : natural := 33;	   -- tempo pedestre --33
	 t_amarelo   : natural := 3; 	   -- tempo amarelo  -- (TimerYR)
	 t_vermelho  : natural := 3; 	   -- tempo vermelho -- 3
	 Sem_carros  : natural := 10; 	-- tempo do ate liberar pedestre sensor sem carros (TimerGRnv)
	 Com_carros  : natural := 30; 	-- tempo do ate liberar pedestre sensor com carros (TimerGRv)
	 Max  		 : natural := 99; 	-- valor limite do contador -- 33
	 N_vias 		 : natural := 1; 		-- Numero de vias -- 1
	 N_bits		 : natural := 7);
	 
	port
	(Bip1_in  : in std_logic;
	 Bip2_in  : in std_logic;
	 Sv_in    : in std_logic; -- sensor veiculo
	 Yv_in    : in std_logic; -- amarelo Y_veiculos
	 Gv_in  	 : in std_logic; -- verde R_veiculos
	 conta_in : in std_logic_vector(N_bits downto 0);
	 conta_out: out std_logic_vector(N_bits downto 0));
		
end entity;

architecture FRANCIN of Decrementador is
constant t_travessia_vias : integer := (N_vias*t_travessia - t_vermelho);
signal sig_conta : integer range 0 to Max;

begin
	sig_conta <= to_integer(unsigned(conta_in));
	
	process (Bip1_in, Bip2_in, Sv_in, Yv_in, Gv_in, sig_conta)
	begin
		if (Bip2_in = '1') then
		conta_out <= std_logic_vector(to_unsigned((t_travessia_vias - sig_conta), N_bits+1));
		
		elsif (Bip1_in = '1' and Gv_in = '1' and Sv_in = '0') then
		conta_out <= std_logic_vector(to_unsigned((Sem_carros + t_amarelo - sig_conta), N_bits+1));
		
		elsif (Bip1_in = '1' and Gv_in = '1' and Sv_in = '1') then
		conta_out <= std_logic_vector(to_unsigned((Com_carros + t_amarelo - sig_conta), N_bits+1));
		
		elsif (Bip1_in = '1' and Yv_in = '1') then
		conta_out <= std_logic_vector(to_unsigned((t_amarelo - sig_conta), N_bits+1));
		
		else
		conta_out <= std_logic_vector(to_unsigned((0), N_bits+1));
		end if;
	end process;
end architecture;