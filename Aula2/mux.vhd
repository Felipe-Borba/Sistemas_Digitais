library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all; -- necessário para o + e '='

entity mux is
	generic (n: natural := 4);
	port (X: in std_logic_vector(n-1 downto 0);
			Y: in std_logic_vector(n-1 downto 0);
			sel: in std_logic;
			saida: out std_logic_vector(n-1 downto 0)
			);
end mux;

architecture comportamento of mux is
begin
	saida <= X when sel = '0' else
				Y;
end comportamento;