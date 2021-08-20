library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;

entity operadores is
	port (
		a     : in std_logic_vector(5 downto 0); -- 6 bits
		b     : in std_logic_vector(2 downto 0); -- 3 bits
		som   : out std_logic_vector(5 downto 0); -- 6 bits 
		sub   : out std_logic_vector(5 downto 0); -- 6 bits 
		mult  : out std_logic_vector(8 downto 0); -- 9 bits
		div   : out std_logic_vector(5 downto 0); -- 6 bits
		resto : out std_logic_vector(2 downto 0)  -- 3 bits
	);
end entity;

architecture type_conv_arch of operadores is
-- Declarar os sinais necessarios para fazer as conversoes de tipo 
		signal a_sig   : signed (5 downto 0); -- 6+1 bits
		signal b_sig   : signed (2 downto 0); -- 3 bits
		signal som_sig : signed (5 downto 0); -- 6+1 bits
begin
-- Inserir o codigo e definir o tamanho das saidas.
-- Conversao para signed 
		
		a_sig <= signed(a);
		b_sig <= signed(b);
		
		som_sig <= resize(a_sig, 6) + b_sig;
		
		som   <= std_logic_vector(resize(som_sig, 6));
		sub   <= std_logic_vector(a_sig - b_sig);
		mult  <= std_logic_vector(a_sig * b_sig);
		div   <= std_logic_vector(a_sig / b_sig);
		resto <= std_logic_vector(a_sig rem b_sig);
		
end architecture;