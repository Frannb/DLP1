library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_bcd_ssd is
	generic (in_Nbits : natural := 7; out_Nbits : integer := 3; out_ssd : natural := 6);
	 
port (
	X_bin  : in  std_logic_vector(in_Nbits downto 0);
	SSD_D1 : out std_logic_vector (out_ssd downto 0);
	SSD_D2 : out std_logic_vector (out_ssd downto 0);
	SSD_U1 : out std_logic_vector (out_ssd downto 0);
	SSD_U2 : out std_logic_vector (out_ssd downto 0));
end entity;

architecture FRANCIN of bin_bcd_ssd is

component bin2bcd is
   generic(in_Nbits : integer := 7; out_Nbits : integer := 3);
	port(
	X_bin : in  std_logic_vector(in_Nbits downto 0);  --  00 a 99
	D_bcd	: out std_logic_vector(out_Nbits downto 0);  --  Dezena
	U_bcd	: out std_logic_vector(out_Nbits downto 0)); --  Unidade
end component;

-------------------------------------------------------------------------------

component bin2ssd is
	generic ( in_bin : natural := 3; out_ssd : natural := 6);
	port(
	bin : in std_logic_vector (in_bin downto 0);
	ssd : out std_logic_vector (out_ssd downto 0));
end component;

------------- DECLARAÇAO DOS SINAIS ------------- 
signal sig_binD : std_logic_vector (out_Nbits downto 0);
signal sig_binU : std_logic_vector (out_Nbits downto 0);
signal sig_outD : std_logic_vector (out_ssd downto 0);
signal sig_outU : std_logic_vector (out_ssd downto 0);

begin

------------------ COMPONENTES ------------------ 
-------------------- DISPLAY1 ------------------- 
C1: bin2bcd
    generic map(in_Nbits => in_Nbits, out_Nbits => out_Nbits)
	 port map(
	 X_bin => X_bin, 
	 D_bcd => sig_binD, --  Dezena
	 U_bcd => sig_binU); --  Unidade

-------------------------------------------------

C2: bin2ssd
	 generic map( in_bin => out_Nbits, out_ssd => 6)
	 port map(
	 bin => sig_binD,
	 ssd => sig_outD);

--------------------------------------------------

C3: bin2ssd
	 generic map( in_bin => out_Nbits, out_ssd => 6)
	 port map(
	 bin => sig_binU,
	 ssd => sig_outU);

-------------------- DISPLAY2 -------------------- 
	 SSD_D1 <= sig_outD;
	 SSD_D2 <= sig_outD;
	 SSD_U1 <= sig_outU;
	 SSD_U2 <= sig_outU;
 
end architecture;