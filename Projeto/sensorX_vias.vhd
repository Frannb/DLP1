ibrary ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sensorX_vias is
	generic
	(N_vias 		 : natural := 1); 		-- Numero de vias
		
	port
	(Sensor_in : in std_logic_vector (N_vias downto 0);
	 Sensor_out: out std_logic); -- contador display
		
end entity;

architecture FRANCIN of sensorX_vias is
	signal  sig_sensor : std_logic;
begin

	for i in 0 to N_vias - 1 loop
	
		sig_sensor <= sensor_in(i) or sig_sensor;
	end loop;

	sensor_out <= sig_sensor;
end architecture;