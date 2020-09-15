library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ULA is
	generic (n: natural := 4);
	port (A: in std_logic_vector(n-1 downto 0);
			B: in std_logic_vector(n-1 downto 0);
			sel: in std_logic_vector(2 downto 0);
			saida: out std_logic_vector(n-1 downto 0)
			);
end ULA;

architecture comportamento of ULA is
signal K1: std_logic_vector(n-1 downto 0);
begin
	K1 <= (0 => '1', others => '0') when A < B else 
			(others => '0');
			
	saida <= (A + B) when sel = "000" else
				(A - B) when sel = "001" else
				(A or B) when sel = "010" else
				(A and B) when sel = "011" else
				NOT(A) when sel = "100" else
				K1;
end comportamento;