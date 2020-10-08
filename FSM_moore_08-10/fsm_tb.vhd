
library ieee;
use ieee.std_logic_1164.all;


entity fsm_tb is
end fsm_tb;

architecture tb of fsm_tb is
    signal clk, rst, entrada : std_logic;  -- inputs 
    signal saida : std_logic;  -- outputs
begin
    -- connecting testbench signals with half_adder.vhd
    UUT : entity work.FSM_moore port map (clk => clk, rst => rst, 
												entrada => entrada, saida => saida);

    -- inputs
    -- 00 at 0 ns
    -- 01 at 20 ns, as b is 0 at 20 ns and a is changed to 1 at 20 ns
    -- 10 at 40 ns
    -- 11 at 60 ns
    entrada <= '0', '1' after 20 ns, '0' after 80 ns, '1' after 160 ns;
    rst <= '1', '0' after 10 ns;
	 process
	 begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
end tb ;