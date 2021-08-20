LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity bin2bcd_UD is
    generic(
        Nbin : natural := 7;
        Nbcd : natural := 3);
    port (
        X_bin        : in  std_logic_vector(Nbin downto 0);  --  00 a 99
        D_bcd        : out std_logic_vector(Nbcd downto 0);  --  Dezena
        U_bcd        : out std_logic_vector(Nbcd downto 0)); --  Unidade
 
end entity;
 
architecture IFSC of bin2bcd_UD is
   signal X_uns : unsigned(Nbin downto 0);
 
begin
	X_uns <= unsigned(X_bin);
	
   D_bcd <= std_logic_vector(resize(X_uns/10, Nbcd+1));
   U_bcd <= std_logic_vector(resize(X_uns rem 10, Nbcd+1));
	 
end architecture;