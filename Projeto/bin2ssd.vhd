library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2ssd is
	generic ( in_bin : natural := 3; out_ssd : natural := 6);
	port
	(
		--tipo : in std_logic; -- tipo = '0' => Catodo Comum |tipo 1 => Anodo Comum
		bin  : in std_logic_vector (in_bin downto 0);
		ssd  : out std_logic_vector (out_ssd downto 0)
	);
end entity;

architecture ifsc of bin2ssd is
	signal ssd_aux : std_logic_vector (6 downto 0);
	signal bin_int : integer range 0 to 9;
	
begin
	bin_int <= to_integer(unsigned(bin));
	process (bin_int) is
	begin
		case bin_int is
			when 0 => ssd_aux <= "0111111";
			when 1 => ssd_aux <= "0000110";
			when 2 => ssd_aux <= "1011011";
			when 3 => ssd_aux <= "1001111";
			when 4 => ssd_aux <= "1100110";
			when 5 => ssd_aux <= "1101101";
			when 6 => ssd_aux <= "1111101";
			when 7 => ssd_aux <= "0000111";
			when 8 => ssd_aux <= "1111111";
			when 9 => ssd_aux <= "1101111";
			when others => ssd_aux <= "0000000";
		end case;
	end process;
	
	-- ssd <= ssd_aux when tipo = '0' else (not ssd_aux);
	ssd <= ssd_aux;
end architecture;