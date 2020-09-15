library ieee;
use ieee.std_logic_1164.all;

entity Somador_aula1 is
	port(A, B: in std_logic_vector(3 downto 0);
			cin: in std_logic;
			S: out std_logic_vector(3 downto 0);
			cout: out std_logic);
end Somador_aula1;

architecture comportamento of Somador_aula1 is
	signal c1, c2, c3: std_logic;
	
component somador_completo is
	port(a, b, cin: in std_logic;
			s, cout: out std_logic);
end component;

begin
	SC0: somador_completo 
		port map(a => A(0), b => B(0), cin => cin, s => S(0), cout => c1);
	SC1: somador_completo 
		port map(a => A(1), b => B(1), cin => c1, s => S(1), cout => c2);
	SC2: somador_completo 
		port map(a => A(2), b => B(2), cin => c2, s => S(2), cout => c3);
	SC3: somador_completo 
		port map(a => A(3), b => B(3), cin => c3, s => S(3), cout => cout);
end comportamento;