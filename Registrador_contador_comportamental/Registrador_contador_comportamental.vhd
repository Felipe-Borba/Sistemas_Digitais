library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use ieee.STD_LOGIC_UNSIGNED.ALL;

entity Registrador_contador_comportamental is
	generic(N: natural:= 7);
	port( clock, reset: in std_logic;
			q: out std_logic_vector(N-1 downto 0));
end Registrador_contador_comportamental;

architecture behavior of Registrador_contador_comportamental is
	signal contagem: std_logic_vector(N-1 downto 0);
	begin
		process(clock,reset)
		begin
			if reset = '1' then
				contagem <= (others => '0');
			elsif rising_edge(clock) then
				contagem <= contagem + 1;
			end if;
		end process;
	q <= contagem;
end behavior;