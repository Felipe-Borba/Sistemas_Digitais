library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity Somador_nbits is
	generic (n: natural := 4);
	port(A, B: in std_logic_vector(n-1 downto 0);
			cin: in std_logic;
			S: out std_logic_vector(n-1 downto 0);
			cout: out std_logic);
end Somador_nbits;

architecture comportamento of Somador_nbits is
	
component somador_completo is
	port(a, b, cin: in std_logic;
			s, cout: out std_logic);
end component;

	signal c: std_logic_vector(N downto 0);

begin
	c(0) <= Cin;
	cout <= c(n);
	SC: for i in 0 to n-1 generate
		SCi: somador_completo 
			port map(a => A(i), b => B(i), cin => c(i), s => S(i), cout => c(i+1));
	end generate;
end comportamento;