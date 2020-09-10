library IEEE;
use IEEE.Std_Logic_1164.all;

entity DecodificadorBCD is
	port (C: in std_logic_vector(5 downto 0);
			F: out std_logic_vector(7 downto 0)
			);
end DecodificadorBCD;

architecture comportamento of DecodificadorBCD is
begin
F <= "00000000" when C = "000000" else --0
	  "00000001" when C = "000001" else --1
	  "00000010" when C = "000010" else --2
	  "00000011" when C = "000011" else --3
	  "00000100" when C = "000100" else --4
	  "00000101" when C = "000101" else --5
	  "00000110" when C = "000110" else --6
	  "00000111" when C = "000111" else --7
	  "00001000" when C = "001000" else --8
	  "00001001" when C = "001001" else --9
	  "00010000" when C = "001010" else --A
	  "00010001" when C = "001011" else --B
	  "00010010" when C = "001100" else --C
	  "00010011" when C = "001101" else --D
	  "00010100" when C = "001110" else --E
	  "00010101" when C = "001111" else --F
	  "00010110" when C = "010000" else--16
	  "00010111" when C = "010001" else--17
	  "00011000" when C = "010010" else--18
	  "00011001" when C = "010011" else--19
	  "00100000" when C = "010100" else--20
	  "00100001" when C = "010101" else--21
	  "00100010" when C = "010110" else--22
	  "00100011" when C = "010111" else--23
	  "00100100" when C = "011000" else--24
	  "00100101" when C = "011001" else--25
	  "00100110" when C = "011010" else--26
	  "00100111" when C = "011011" else--27
	  "00101000" when C = "011100" else--28
	  "00101001" when C = "011101" else--29
	  "00110000" when C = "011110" else--30
	  "00110001" when C = "011111" else--31
	  "00110010" when C = "100000" else--32
	  "00110011" when C = "100001" else--33
	  "00110100" when C = "100010" else--34
	  "00110101" ;
end comportamento;
