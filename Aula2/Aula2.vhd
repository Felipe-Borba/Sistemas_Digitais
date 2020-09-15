library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity Aula2 is
	generic (n: natural := 4);
	port (A, B: in std_logic_vector(n-1 downto 0);
			upcode: in std_logic;
			S: out std_logic_vector(n-1 downto 0);
			flag: out std_logic
			);
end Aula2;

architecture comportamento of Aula2 is 

component Somador_nbits is
	generic (n: natural := n);
	port (A, B: in std_logic_vector(n-1 downto 0);
			cin: in std_logic;
			S: out std_logic_vector(n-1 downto 0);
			cout: out std_logic
			);
end component;

component mux is
	generic (n: natural := n);
	port (X: in std_logic_vector(n-1 downto 0);
			Y: in std_logic_vector(n-1 downto 0);
			sel: in std_logic;
			saida: out std_logic_vector(n-1 downto 0)
			);
end component;

signal K1, K2: std_logic_vector(n-1 downto 0);
signal of1, of2: std_logic;

begin
	flag <= of1 or of2;
	
	SNB1: Somador_nbits
		port map(A => A, B => B, cin => '0', S => K1, cout => of1);		
	SNB2: Somador_nbits
		port map(A => A, B => not(B), cin => '1',S => K2, cout => of2);
	MX: mux
		port map(X => K1, Y => K2, sel => upcode, saida => S);
end comportamento;


