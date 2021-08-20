library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sensor_faixa is
		
	port
	(Foto_celula  : in std_logic;
	 Luz_Faixa 	  : in std_logic;
	 Acende_faixa : out std_logic);
		
end entity;

architecture FRANCIN of Sensor_faixa is
begin

	Acende_faixa <= Foto_celula and Luz_Faixa;

end architecture;