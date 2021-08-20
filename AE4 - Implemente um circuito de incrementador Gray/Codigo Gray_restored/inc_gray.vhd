library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity inc_gray is
	generic(
				N : natural := 4
			 );
	port
		(gray_in   : in std_logic_vector(N-1 downto 0);
		 bray_out  : out std_logic_vector(N-1 downto 0)
		 );
end entity;

architecture Francin of inc_gray is
	signal soma, bin: std_logic_vector(N-1 downto 0);

begin

   bin(N-1) <= gray_in(N-1) xor '0';                  
   gray_to_bin: for i in N-2 downto 0 generate 
					 bin(i) <= gray_in(i) xor bin(i+1);
	end generate;              
										                           
										     
	soma <= std_logic_vector(resize(unsigned(bin)),5); 
	
	
   bray_out(N-1) <= soma(N-1) xor '0';              
   bin_to_gray: for i in N-2 downto 0 generate       
						bray_out(i) <= soma(i) xor soma(i+1);
   end generate;                                               
end architecture;