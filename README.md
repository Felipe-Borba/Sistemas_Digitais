# Sistemas_Digitais
Todos os códigos da disciplina de Sistemas Digitais.

FPGA: EP2C35F672C6

Sobre simulação no quartus com do file:
para carregar o arquivo de atraso da fpga vc tem que ter compilado o timequest
depois na janela da simulação clique em simulate>start simulate>SDF e não esquece de celecionar o projeto em desing

para carregar o arquivo.do
abra o dofile
digite no terminalzin ali em baixo:
VSIM 4> do "nome".do 
VSIM 4> run "tempo" ns


exemplo de dofile

restart -f
force -freeze /clock 1 0, 0 {10 ns} -r 20 ns
force -freeze /reset 1 0 ns, 0 20ns
