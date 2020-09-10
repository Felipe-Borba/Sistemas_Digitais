library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;


entity somador_completo is
	port(a, b, cin: in std_logic;
			s, cout: out std_logic);
end somador_completo;

architecture comportamento of somador_completo is
begin
	s <= a xor b xor cin;
	cout <= (a and cin) or (b and cin) or (a and b);
end comportamento;