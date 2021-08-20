library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont0a9_7seg is
	generic(fclk: natural := 50000000); --Para executar no hardware
--	generic(Nclk: natural := 26);
-- generic(fclk: natural := 10); --Para executar no simulaçao
	
	port(
	Clk50MHz, rst : in std_logic;
	      LED_MR0 : out std_logic;
		  LED_BLUE : out std_logic;
		   LED_CNT : out std_logic_vector (3 downto 0);
	      SSD_OUT : out std_logic_vector(6 downto 0));
end entity;

architecture Francin of cont0a9_7seg is
	signal count: integer range 0 to 9;
--	signal cnt_slv: std_logic_vector (Nclk-1 downto 0);
	signal cnt_int: integer range 0 to fclk-1;
	signal ena_1seg: std_logic;
	attribute keep: boolean;
	attribute keep of ena_1seg: signal is false; 

begin
	
	LED_MR0 <= '0'; --LED aterrado
	
	process(rst, Clk50MHz)
		variable cnt: integer range 0 to fclk-1;
	begin
		if rst = '1' then
			cnt := 0;
		elsif rising_edge(Clk50MHz) then
			if cnt = fclk-1 then
				cnt := 0;
			else 
				cnt := cnt + 1;
			end if;
		end if;
	cnt_int <= cnt;	
--	cnt_slv <= std_logic_vector(to_unsigned(count,Nclk));
	end process;
	
--	ena_1seg <= not cnt_slv(Nclk-1);
--	ena_1seg <= '1' when cnt_int < fclk/2 else '0';
	ena_1seg <= '1' when cnt_int = 0 else '0';
	led_blue<= '1' when cnt_int < fclk/2 else '0'; 
	
	process(rst, Clk50MHz)
		variable cnt: integer range 0 to 9;
	begin
		if rst = '1' then
			cnt := 0;
		elsif rising_edge(Clk50MHz) then
			if ena_1seg = '1' then 
				if cnt = 9 then
					cnt := 0;
				else 
					cnt := cnt + 1;
				end if;
			end if;
		end if;
		count <= cnt;
	end process;
	
	led_cnt <= not std_logic_vector(to_unsigned(count, 4));

		process (count) is
			begin
				case count is
					when 0 => ssd_out <= "1000000";
					when 1 => ssd_out <= "1111001";
					when 2 => ssd_out <= "0100100";
					when 3 => ssd_out <= "0110000";
					when 4 => ssd_out <= "0011001";
					when 5 => ssd_out <= "0010010";
					when 6 => ssd_out <= "0000010";
					when 7 => ssd_out <= "1111000";
					when 8 => ssd_out <= "0000000";
					when 9 => ssd_out <= "0010000";
					when others => ssd_out <= "0000110";
				end case;
	end process;
end architecture;
