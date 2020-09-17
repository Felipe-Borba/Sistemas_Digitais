library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ULA is
	generic (n: natural := 4);
	port (A: in std_logic_vector(n-1 downto 0);
			B: in std_logic_vector(n-1 downto 0);
			Cin: in std_logic;
			sel: in std_logic_vector(2 downto 0);
			zero: out std_logic;
			overflow: out std_logic;
			carry_out: out std_logic;
			negativo: out std_logic;
			saida: out std_logic_vector(n-1 downto 0)
			);
end ULA;

architecture comportamento of ULA is
signal K1: std_logic_vector(n-1 downto 0);
signal K2: std_logic_vector(n-1 downto 0) := (others => '0');
signal K3: std_logic_vector(n downto 0);
signal K4: std_logic_vector(n downto 0);

begin
	K1 <= (0 => '1', others => '0') when A < B else 
			(others => '0');
			
	carry_out <= K4(n) or K3(n);
	overflow <= (A(n-1) and B(n-1)) xor (A(n-2) and B(n-2));
	negativo <= K4(n-1) or K3(n-1);
	zero <= '0' when (A-B) = K2;
	K3 <= ('0' & A) + ('0' & B)+ Cin;
	K4 <= ('0' & A) - ('0' & B)+ Cin;
	
	saida <= (K3(n-1 downto 0))	when sel = "000" else
				(K4(n-1 downto 0)) 	when sel = "001" else
				(A or B) 				when sel = "010" else
				(A and B) 				when sel = "011" else
				(NOT(A)) 				when sel = "100" else
			   (K1) 						when sel = "101" else
				(A xnor B) 				when sel = "110" else
				(A xor B);
end comportamento;