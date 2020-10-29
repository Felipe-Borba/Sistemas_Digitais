library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mcafe is
generic(n: natural:= 4);
port( clk, reset, cinq_centavos, um_real: in std_logic;
ok: in std_logic;
cafe: out std_logic);
end mcafe;

architecture behavior of mcafe is
        --signal n: std_logic;
        type t_state is (s0, s1, s2, s3, s4);
        signal state: t_state;
        
        signal dinheiro: std_logic_vector(3 downto 0);
        signal sinal_cinq, sinal_um: std_logic;
begin

sinal_cinq <= cinq_centavos;
sinal_um <= um_real;

process(clk, reset)
--variable n: std_logic;
begin
        if (reset = '1') then cafe<='0';
        else IF (clk'EVENT and clk = '1') THEN
                case state is
                
                        when s0 =>
                                if ((sinal_cinq ='0' and sinal_um='0') and dinheiro="0000" and ok='0') then 
                                        dinheiro<= "0000";
                                        state<= s0;
                                end if;
                                        
                                if ((sinal_cinq ='1' or sinal_um='1') and dinheiro< "1000") then 
                                        dinheiro<= dinheiro + "000"&sinal_cinq + ("000"&sinal_um)*2;
                                        state<= s2;
                                end if;
                                
                        when s1=> -- já com algum dinheiro
                        
                                --VERIFICA OK
                                if ((sinal_cinq ='0' and sinal_um='0') and dinheiro>="1000" and ok='1') then 
                                        dinheiro<= 0;
                                        state<= s4;
                                end if;
                                
                                if ((sinal_cinq ='1' or sinal_um='1') and dinheiro<"1000'") then 
                                        dinheiro<= dinheiro + "000"&sinal_cinq + ("000"&sinal_um)*2;
                                        state<= s3;
                                end if;
                                
                                --cliente perdendo dinheiro
                                if ((sinal_cinq ='1' or sinal_um='1') and dinheiro>="1000" and ok='1') then 
                                        dinheiro<= '0';
                                        state<= s4;
                                end if;
                                                                
                        when s2=> -- zera entradas
                                sinal_cinq <= '0';
                                sinal_um <= '0';
                                state<= s1;
                                
                        when s3=> -- zera entradas e dinheiro
                                sinal_cinq <= '0';
                                sinal_um <= '0';
                                dinheiro <= "0000";
                                state<= s1;

                        when s4=>-- saida
                                cafe<='1';
                                state<= s0;
                                
                        end case;
                end if;
        end if;
end process;

end architecture;