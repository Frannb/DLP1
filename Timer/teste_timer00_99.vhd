LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;

ENTITY teste_timer00_99 IS
	GENERIC (NbitG : natural := 7; 
	MaxG : natural := 99; 
	--fclkG : natural := 5; 
	--nclkG : natural := 3; 
	fclkG : natural := 50000000; 
	nclkG : natural := 26; 
	N_bcd : natural := 3;  
	N_ssd : natural := 6);
	
	PORT
	(
		clk50MHz_in :  in  std_logic;
		rst_in :  in  std_logic;
		tipo_in: in std_logic;
		ssd_D  : out std_logic_vector (N_ssd downto 0);
		ssd_U  : out std_logic_vector (N_ssd downto 0)
	);
END ENTITY;

ARCHITECTURE comp_ifsc OF teste_timer00_99 IS
	
	--------------------- DIVISOR DE CLOCK ---------------------
	component div_clk is
		generic (fclk : natural := 50000000; Nclk : natural := 26);
		port (clk50MHz,rst: in std_logic;
				ena1seg: out std_logic);		
	end component;
	
	--------------------- CONTADOR DE 00 A 99 --------------------
	component contadorNbin is
		generic (Max : positive := 99; Nbits : natural := 7);
		port (clk50MHz,rst : in std_logic;
			        ena1seg : in std_logic;
				       conta : out std_logic_vector(Nbits downto 0));
	end component;
	
	--------------------- CONVERSOR DE BIN TO BCD --------------------
	component bin2bcd_UD is
    generic(
        Nbin : natural := 7;
        Nbcd : natural := 3);
    port (
        X_bin        : in  std_logic_vector(Nbin downto 0);  --  00 a 99
        D_bcd        : out std_logic_vector(Nbcd downto 0);  --  Dezena
        U_bcd        : out std_logic_vector(Nbcd downto 0)); --  Unidade
 
	end component;

	--------------------- CONVERSOR DE BCD TO SSD -------------------
	component bin2ssd is
--	generic ( N_bin : natural := 3; N_ssd : natural := 6);
	port
	(
		tipo : in std_logic; -- tipo = '0' => Catodo Comum |tipo 1 => Anodo Comum
		bin  : in std_logic_vector (3 downto 0);
		ssd  : out std_logic_vector (6 downto 0)
	);
	end component;
	
	--------------------- SINAIS -------------------
	signal ena1seg_sig :  std_logic;
	signal conta_out   : std_logic_vector(NbitG DOWNTO 0);
	signal U_sig, D_sig: std_logic_vector(N_bcd downto 0);
	
BEGIN
	
	U1: div_clk
		generic map (fclk => fclkG, Nclk => NclkG)		
		port map (clk50MHz => clk50MHz_in ,rst => rst_in, ena1seg => ena1seg_sig);
		
	U2: contadorNbin
		generic map (Max => MaxG, Nbits => NbitG)
		port map (clk50MHz => clk50MHz_in, rst => rst_in, ena1seg => ena1seg_sig, conta => conta_out);
		
	U3: bin2bcd_UD	
		generic map( Nbin => NbitG, Nbcd => N_bcd)
		port map (X_bin => conta_out, D_bcd => D_sig, U_bcd => U_sig);

	U4: bin2ssd
		port map (tipo => tipo_in, bin => U_sig, ssd => ssd_U);
	
	U5: bin2ssd
		port map (tipo => tipo_in, bin => D_sig, ssd => ssd_D);
		
END ARCHITECTURE;

