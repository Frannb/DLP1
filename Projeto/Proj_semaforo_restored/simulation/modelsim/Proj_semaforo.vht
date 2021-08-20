LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Proj_semaforo_vhd_tst IS
END Proj_semaforo_vhd_tst;

ARCHITECTURE Proj_semaforo_arch OF Proj_semaforo_vhd_tst IS

-- constants
constant tclk: time := 0.5 sec;   
constant treset: time := 100 ps; 
constant talto: time := 1 sec;    
                                             
-- signals                                                   
SIGNAL Acende_faixa : STD_LOGIC;
SIGNAL B_ped1 : STD_LOGIC;
SIGNAL B_ped2 : STD_LOGIC;
SIGNAL bip1 : STD_LOGIC;
SIGNAL bip2 : STD_LOGIC;
SIGNAL clk50MHz : STD_LOGIC;
SIGNAL COLUNA0 : STD_LOGIC;
SIGNAL Foto_celula : STD_LOGIC;
SIGNAL G_pedestre : STD_LOGIC;
SIGNAL G_veiculos : STD_LOGIC;
SIGNAL R_pedestre : STD_LOGIC;
SIGNAL R_veiculos : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL Sensor_V1 : STD_LOGIC;
SIGNAL Sensor_V2 : STD_LOGIC;
SIGNAL Sensor_V3 : STD_LOGIC;
SIGNAL SSD_D1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SSD_U1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Y_veiculos : STD_LOGIC;

COMPONENT Proj_semaforo
	PORT (
	Acende_faixa : OUT STD_LOGIC;
	B_ped1 : IN STD_LOGIC;
	B_ped2 : IN STD_LOGIC;
	bip1 : OUT STD_LOGIC;
	bip2 : OUT STD_LOGIC;
	clk50MHz : IN STD_LOGIC;
	COLUNA0 : OUT STD_LOGIC;
	Foto_celula : IN STD_LOGIC;
	G_pedestre : OUT STD_LOGIC;
	G_veiculos : OUT STD_LOGIC;
	R_pedestre : OUT STD_LOGIC;
	R_veiculos : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	Sensor_V1 : IN STD_LOGIC;
	Sensor_V2 : IN STD_LOGIC;
	Sensor_V3 : IN STD_LOGIC;
	SSD_D1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SSD_U1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Y_veiculos : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Proj_semaforo
	PORT MAP (
-- list connections between master ports and signals
	Acende_faixa => Acende_faixa,
	B_ped1 => B_ped1,
	B_ped2 => B_ped2,
	bip1 => bip1,
	bip2 => bip2,
	clk50MHz => clk50MHz,
	COLUNA0 => COLUNA0,
	Foto_celula => Foto_celula,
	G_pedestre => G_pedestre,
	G_veiculos => G_veiculos,
	R_pedestre => R_pedestre,
	R_veiculos => R_veiculos,
	rst => rst,
	Sensor_V1 => Sensor_V1,
	Sensor_V2 => Sensor_V2,
	Sensor_V3 => Sensor_V3,
	SSD_D1 => SSD_D1,
	SSD_U1 => SSD_U1,
	Y_veiculos => Y_veiculos
	);

	-- RESET COM DURAO DE treset (COM CDIGO CONCORRENTE)
	sim_rst: rst <= '1', '0' after treset;
	 
	-- CLOCK COM PERIODO DE 2*tclk (COM CDIGO SEQUENCIAL)
	sim_clk: PROCESS                                              
	BEGIN  
	  clk50MHz <= '0';
	  wait for tclk;
	  clk50MHz <= '1';
	  wait for tclk;
	END PROCESS;
	-- GERAAO DO ESTIMULO "e5c"(COM CDIGO SEQUENCIAL)
	--sim_e5c: e5c <= '0', '1' after 13 sec, '0' after 14 sec;

		-- GERAAO DO ESTIMULO "e5c"(COM CDIGO SEQUENCIAL)
	--sim_e10c: e10c <= '0', '1' after 16 sec, '0' after 17 sec, '1' after 23 sec,  '0' after 24 sec;

	sim_Sensor_V1: Sensor_V1 <= '0', '1' after 10 sec;     
	sim_Sensor_V2: Sensor_V2 <= '0';    
	sim_Sensor_V3: Sensor_V3 <= '0';
	sim_B_ped1: B_ped1 <= '0', '1' after 10 sec, '0' after 10 sec;  
	sim_B_ped2: B_ped2 <= '0';  
	
	
END ARCHITECTURE;
