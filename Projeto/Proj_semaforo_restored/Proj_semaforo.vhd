library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Proj_semaforo is
	generic (
	 fclk        : natural := 10; 
	 Nclk        : natural := 4;
	 --fclk        : natural := 50000000; 
	 --Nclk        : natural := 26;
	 t_default   : natural := 1;     -- tempo padrao
  	 t_travessia : natural := 33;	   -- tempo pedestre --76
	 t_amarelo   : natural := 3; 	   -- tempo amarelo  -- 3
	 t_vermelho  : natural := 3; 	   -- tempo vermelho -- 3
	 Sem_carros  : natural := 10; 	-- tempo do ate liberar pedestre sensor sem carros -- 10
	 Com_carros  : natural := 30; 	-- tempo do ate liberar pedestre sensor com carros --30
	 Max  		 : natural := 99; 	-- valor limite do contador -- 76
	 N_vias 		 : natural := 1; 		-- Numero de vias -- 1
	 in_Nbits	 : natural := 7;
	 out_Nbits	 : natural := 3);
	 

port (
	clk50MHz       : in std_logic;
	rst            : in std_logic;
	Sensor_V1      : in std_logic;
	Sensor_V2      : in std_logic;
	Sensor_V3      : in std_logic;
	Foto_celula    : in std_logic; -- Sensor luminoso
	B_ped1         : in std_logic; -- Botao pedestre
	B_ped2         : in std_logic; -- Botao pedestre
	COLUNA0        : out std_logic;
	Acende_faixa   : out std_logic; 
	bip1, bip2     : out std_logic; -- alarme sonoro para deficiente
	R_pedestre     : out std_logic; -- vermelho R_pedestre
	G_pedestre     : out std_logic; -- verde R_pedestre
	R_veiculos	   : out std_logic; -- vermelho R_veiculos
	Y_veiculos     : out std_logic; -- amarelo Y_veiculos
	G_veiculos     : out std_logic; -- verde R_veiculos
--	count_saida  	: out std_logic_vector(in_Nbits downto 0));
	SSD_U1		   : out std_logic_vector (6 downto 0);
	SSD_D1 		   : out std_logic_vector (6 downto 0));
--	SSD_U2		   : out std_logic_vector (6 downto 0);
--	SSD_D2 		   : out std_logic_vector (6 downto 0));
end entity;

architecture FRANCIN of Proj_semaforo is

component divisor_clk is
	generic (fclk : natural := 10; Nclk : natural := 4);
--	generic (fclk : natural := 50000000; Nclk : natural := 26); -- placa
		
	port (
	clk50MHz : in std_logic;
	rst      : in std_logic;
	ena1seg  : out std_logic);
end component;

-------------------------------------------------------------------------------

component maq_semaforo is
	generic(
	t_default   : natural := 1;     -- tempo padrao
 	t_travessia : natural := 76;	-- tempo pedestre --76
	t_amarelo   : natural := 3; 	   -- tempo amarelo  -- 3
	t_vermelho  : natural := 3; 	   -- tempo vermelho -- 3
	Sem_carros  : natural := 10; 	-- tempo do ate liberar pedestre sensor sem carros -- 10
	Com_carros  : natural := 30; 	-- tempo do ate liberar pedestre sensor com carros --30
	Max  		   : natural := 76; 	-- valor limite do contador -- 76
	N_vias 		: natural := 1; 		-- Numero de vias -- 1
	N_bits		: natural := 7);
		
	port(
	ena1seg  	   : in std_logic;
	clk            : in std_logic;
	reset			   : in std_logic;
 	botao_pedestre : in std_logic;  -- botao pedestre
	sensor_veiculos: in std_logic;  -- sensor dos veiculos
	bip1, bip2     : out std_logic; -- alarme sonoro para deficiente
	R_pedestre     : out std_logic; -- vermelho R_pedestre
	G_pedestre     : out std_logic; -- verde R_pedestre
	R_veiculos 	   : out std_logic; -- vermelho R_veiculos
	Y_veiculos     : out std_logic; -- amarelo Y_veiculos
	G_veiculos  	: out std_logic; -- verde R_veiculos
	Luz_faixa  	   : out std_logic; -- iluminaçao da faixa de pedestre
	count_saida  	: out std_logic_vector(N_bits downto 0)); -- contador display
end component;

-------------------------------------------------------------------------------

component SensorN_vias is
	port(
	Sensor_V1  : in std_logic;
	Sensor_V2  : in std_logic;
	Sensor_V3  : in std_logic;
	Sensor_out : out std_logic);
end component;

-------------------------------------------------------------------------------

component Sensor_faixa is
	port(
	Foto_celula  : in std_logic;
	Luz_Faixa  	 : in std_logic;
	Acende_faixa : out std_logic);
end component;

-------------------------------------------------------------------------------

component bin_bcd_ssd is
	generic (in_Nbits : natural := 7; out_Nbits : integer := 3; out_ssd : natural := 6);
port (
	X_bin  : in  std_logic_vector(in_Nbits downto 0);
	SSD_D1 : out std_logic_vector (out_ssd downto 0);
	SSD_D2 : out std_logic_vector (out_ssd downto 0);
	SSD_U1 : out std_logic_vector (out_ssd downto 0);
	SSD_U2 : out std_logic_vector (out_ssd downto 0));
end component;

------------------------------------------------------------------------------

component Botao_ped is
	port(
	 B1  : in std_logic;
	 B2 	  : in std_logic;
	 B_out : out std_logic);
end component;

-------------------------------------------------------------------------------

component Decrementador is
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
		
end component;
-------------------------------------------------------------------------------
------------- DECLARAÇAO DOS SINAIS ------------- 
signal sig_ena1seg : std_logic;
signal sig_Luz_faixa : std_logic;
signal sig_conta_in : std_logic_vector(in_Nbits downto 0);
signal sig_conta_out : std_logic_vector(in_Nbits downto 0);
signal sig_binD : std_logic_vector (out_Nbits downto 0);
signal sig_binU : std_logic_vector (out_Nbits downto 0);
signal sig_veic : std_logic;
signal sig_botao : std_logic;
signal sig_bip1 : std_logic;
signal sig_bip2 : std_logic;
signal sig_Yv : std_logic;
signal sig_Gv : std_logic;
signal sig_Rv : std_logic;
signal sig_Gp : std_logic;
signal sig_Rp : std_logic;

begin

------------------ COMPONENTES ------------------ 

C1: divisor_clk 
	 generic map(fclk => fclk, Nclk => Nclk)
		
	 port map(
	 clk50MHz => clk50MHz,
	 rst      => rst,
	 ena1seg  => sig_ena1seg);

-------------------------------------------------------------------------------

C2: maq_semaforo
	 generic map(
	 t_default   => t_default,
  	 t_travessia => t_travessia,
	 t_amarelo   => t_amarelo,
	 t_vermelho  => t_vermelho,
	 Sem_carros  => Sem_carros,
	 Com_carros  => Com_carros,
	 Max  		 => Max,
	 N_vias 		 => N_vias,
	 N_bits		 => in_Nbits)
		
	 port map (
	 ena1seg     => sig_ena1seg,
	 clk         => clk50MHz,
	 reset	    => rst,
 	 botao_pedestre => sig_botao,
	 sensor_veiculos => sig_veic,
	 bip1 => sig_bip1,
	 bip2 => sig_bip2,
	 R_pedestre => sig_Rp,
	 G_pedestre => sig_Gp,
	 R_veiculos => sig_Rv,
	 Y_veiculos => sig_Yv,
	 G_veiculos => sig_Gv,
	 Luz_faixa => sig_Luz_faixa,
	 count_saida => sig_conta_in);
	 
-------------------------------------------------------------------------------

C3: SensorN_vias
 	 port map(
	 Sensor_V1 => Sensor_V1,
	 Sensor_V2 => Sensor_V2,
	 Sensor_V3 => Sensor_V3,
	 Sensor_out => sig_veic);

-------------------------------------------------------------------------------

C4: Sensor_faixa
	 port map(
	 Foto_celula => Foto_celula,
	 Luz_Faixa => sig_Luz_faixa,
	 Acende_faixa => Acende_faixa);
	 
-------------------------------------------------------------------------------

C5: Botao_ped 
	 port map(
	 B1 => B_ped1,
	 B2 => B_ped2,
	 B_out => sig_botao);
	 
-------------------------------------------------------------------------------

C6: Decrementador
    generic map (
	 t_travessia => t_travessia,
	 t_amarelo => t_amarelo,  -- (TimerYR)
	 t_vermelho => t_vermelho,
	 Sem_carros => Sem_carros, -- (TimerGRnv)
	 Com_carros => Com_carros, -- (TimerGRv)
	 Max => Max, 
	 N_vias => N_vias,	-- Numero de vias -- 1
	 N_bits => in_Nbits)
	 
	 port map (
	 Bip1_in => sig_bip1,
	 Bip2_in => sig_bip2,
	 Sv_in => sig_veic,
	 Yv_in => sig_Yv,
	 Gv_in => sig_Gv,
	 conta_in => sig_conta_in,
	 conta_out => sig_conta_out);

-------------------------------------------------------------------------------

C7: bin_bcd_ssd
    generic map(in_Nbits => in_Nbits, out_Nbits => out_Nbits, out_ssd => 6)
	 port map(
	 X_bin  => sig_conta_out,
	 SSD_D1 => SSD_D1,
	 SSD_D2 => open, --SSD_D2,
	 SSD_U1 => SSD_U1,
	 SSD_U2 => open); --SSD_U2);

-------------------------------------------------------------------------------

bip1 <= not sig_bip1;
bip2 <= not sig_bip2;
Y_veiculos <= not sig_Yv;
G_veiculos <= not sig_Gv;
R_pedestre <= not sig_Rp;
G_pedestre <= not sig_Gp;
R_veiculos <= not sig_Rv;
COLUNA0 <= '0';

end architecture;
