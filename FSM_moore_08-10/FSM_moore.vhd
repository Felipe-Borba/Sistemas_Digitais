library ieee;
use ieee.std_logic_1164.all;

entity FSM_moore is
	port(clk, rst: in std_logic;
			entrada: in std_logic;
			saida: out std_logic);
end FSM_moore;

architecture fsm of FSM_moore is
	type tipo_estado is (S, s0, s1);
	
	signal estado: tipo_estado;
begin
	-- controle
	process(clk, rst)
	begin
		if rst = '1' then
			estado <= S;
		elsif clk'event and clk = '1' then
			case estado is
				when S => 
					if entrada = '0' then
						estado <= S;
					else
						estado <= s0;
					end if;
				when s0 =>
					if entrada = '0' then
						estado <= s0;
					else
						estado <= s1;
					end if;
				when s1 =>
					if entrada = '0' then
						estado <= S;
					else
						estado <= s0;
					end if;
			end case;
		end if;
	end process;
	
	-- saida
	saida <= '1' when estado = s1 else '0';
			
end fsm;