library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--entity SensorN_vias is
--	generic
--	(N_vias  : natural := 1);
--		
--	port
--	(Sensor_in  : in std_logic_vector(1 to N_vias); 
--	 Sensor_out : out std_logic); 
--		
--end entity;
--
--architecture FRANCIN of SensorN_vias is
--signal sig_sensor :  std_logic;
--begin
--L1: for i in 1 to N_vias generate
--		sig_sensor <= sensor_in(i) or sig_sensor;
--		
--	end generate;
--	sensor_out <= sig_sensor;
--	
--end architecture;
-------------------------------------------------------------------------------------

--entity SensorN_vias is
--		
--	port
--	(
--	 clk        : in std_logic;
--	 reset		: in std_logic;
--	 Sensor_V1  : in std_logic;
--	 Sensor_V2  : in std_logic;
--	 Sensor_V3  : in std_logic;
--	 Sensor_out : out std_logic);
--		
--end entity;
--
--architecture FRANCIN of SensorN_vias is
--	type state is (SEM_CARRO, COM_CARRO);
--	signal pr_state, nx_state : state;
--	--attribute ENUM_ENCODING : string; --optional attribute
--	--attribute ENUM_ENCODING of state : type is "sequential";
--
--	
--begin
--
--	------Lower section of FSM:------------
--	process (clk, reset)
--	begin
--		if (reset = '1') then
--			pr_state <= SEM_CARRO;
--		elsif (rising_edge(clk)) then
--				pr_state <= nx_state;
--		end if;
--	end process;
--	
--	------Upper section of FSM:------------
--	process (pr_state, Sensor_V1, Sensor_V2, Sensor_V3)
--		begin	
--	 
--			case pr_state is
--				when SEM_CARRO =>
--				Sensor_out <= '0';
--					if (Sensor_V1 = '0' and Sensor_V2 = '0' and Sensor_V3 = '0') then
--						nx_state <= COM_CARRO;
--					else
--						nx_state <= SEM_CARRO;
--					end if;
-------------------------------------------------------------	
--		
--				when COM_CARRO =>
--				Sensor_out <= '1';
--					if (Sensor_V1 = '1' or Sensor_V2 = '1' or Sensor_V3 = '1') then
--						nx_state <= SEM_CARRO;
--					else
--						nx_state <= COM_CARRO;
--					end if;
--					
--			end case;
--		end process;
--end architecture;

-------------------------------------------------------------------------------------

entity SensorN_vias is
		
	port
	(Sensor_V1  : in std_logic;
	 Sensor_V2  : in std_logic;
	 Sensor_V3  : in std_logic;
	 Sensor_out : out std_logic);
		
end entity;

architecture FRANCIN of SensorN_vias is
begin

	Sensor_out <= Sensor_V1 or Sensor_V2 or Sensor_V3;

end architecture;