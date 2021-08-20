library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Botao_ped is
		
	port
	(B1  : in std_logic;
	 B2 	  : in std_logic;
	 B_out : out std_logic);
		
end entity;

architecture FRANCIN of Botao_ped is
begin

	B_out <= B1 or B2;

end architecture;