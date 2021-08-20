library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	generic (N : natural := 5); 
	port 
	(
		a, b   : in std_logic_vector(N-1 downto 0);
		cin    : in std_logic_vector(N-N downto 0);
		opcode : in std_logic_vector(3 downto 0);
		erro   : out std_logic; 
		y      : out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture arch_alu of alu is
	signal a_uns, b_uns, y_arith : unsigned (N-1 downto 0);
	signal cin_uns : unsigned (N-N downto 0);
	signal y_logic: std_logic_vector (N-1 downto 0);
begin
	a_uns   <= unsigned(a);
	b_uns   <= unsigned(b);
	cin_uns <= unsigned(cin);
	
	-- Select
	with opcode(3) select
	y <= y_logic when '0',
		  std_logic_vector(y_arith) when others; -- '1'
	
	-- Parte Logica
	with opcode(2 downto 0) select
	y_logic <= (not a)    when "000",
				  (not b)    when "001",
				  (a and b)  when "010",
				  (a or b)   when "011",
				  (a nand b) when "100",
				  (a nor b)  when "101",
				  (a xor b)  when "110",
				  (a xnor b) when others; --111
				  
	-- Parte Aritmetic
	with opcode(2 downto 0) select
	y_arith <= (a_uns)         when "000",
				  (b_uns)         when "001",
				  (a_uns + 1)     when "010",
				  (b_uns + 1)     when "011",
				  (a_uns - 1)     when "100",
				  (b_uns - 1)     when "101",
				  (a_uns + b_uns) when "110",
				  (a_uns + b_uns + cin_uns) when others; --111
				  
	-- Verificacao 
	erro <=  '1' when (a_uns > 15 and opcode = "1010") else -- incremento A
				'1' when (b_uns > 15 and opcode = "1011") else -- incremento B
				'1' when (a_uns < 0 and opcode = "1100") else -- decremento A
				'1' when (b_uns < 0 and opcode = "1101") else -- decremento B
				'1' when ((a_uns + b_uns < 0) or (a_uns + b_uns > 15)) and opcode = "1110" else -- soma A + B
				'1' when ((a_uns + b_uns + cin_uns < 0) or (a_uns + b_uns + cin_uns > 15)) and opcode = "1111" else -- soma A + B + CIN
				'0';
				
				
	
end architecture;