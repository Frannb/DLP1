library ieee;
use ieee.std_logic_1164.all;
entity divisor_clk is
	
-- Nclk = log2(fclk) = 26 -- Para executar no hardware
	generic (fclk : natural := 10; Nclk : natural := 4);
--	generic (fclk : natural := 50000000; Nclk : natural := 26); -- placa
		
	port (clk50MHz : in std_logic;
				   rst: in std_logic;
			  ena1seg: out std_logic);
		
end entity;

architecture FRANCIN of divisor_clk is
	signal cnt_int:  integer range 0 to fclk-1;
begin
	process (rst, clk50Mhz)
		variable cnt:  integer range 0 to fclk-1;
	begin
	 if rst = '1' then
		cnt := 0;
	 elsif rising_edge(clk50Mhz) then
		if cnt = fclk-1 then
			cnt := 0;
		else
			cnt := cnt + 1;
		end if;
	 end if;
	 cnt_int <= cnt;
	end process;
--	ena1seg <= '1' when cnt_int < fclk/2 else '0';
	ena1seg <= '1' when cnt_int = fclk-1 else '0';
		
end architecture;