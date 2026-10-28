# Memória RAM 16 × 8 em VHDL

Projeto de uma memória de 16 posições por 8 bits, descrita em VHDL e configurada para a FPGA Intel Cyclone IV E EP4CE22F17C6. O projeto foi criado no Quartus Prime Lite 17.0.

## Funcionamento

- `addr` seleciona uma das 16 posições.
- Com `enable = '1'`, `D_in` é gravado na posição selecionada na borda de subida de `clk`.
- `clear = '1'` zera assincronamente o conteúdo de todas as posições.
- `D_out` apresenta continuamente o conteúdo da posição selecionada por `addr` (leitura assíncrona).
- Quando `enable = '0'`, a posição mantém seu valor.

## Arquivos

| Arquivo | Descrição |
| --- | --- |
| `memoria.vhd` | Módulo principal: conecta os registradores, o decodificador e o multiplexador. |
| `reg8.vhd` | Registrador de 8 bits com escrita síncrona e limpeza assíncrona. |
| `decoder4to16.vhd` | Decodificador do endereço de 4 bits para seleção de uma posição. |
| `mux16x1_8bits.vhd` | Multiplexador que encaminha à saída a posição selecionada. |
| `memoria.qpf` / `memoria.qsf` | Projeto e configuração do Quartus, incluindo o dispositivo e os pinos. |
| `Waveform.vwf` | Arquivo de formas de onda para uso no fluxo de simulação do Quartus. |

## Abrir e compilar

1. Abra `memoria.qpf` no Quartus Prime Lite.
2. Verifique se o dispositivo configurado corresponde à sua placa. A configuração atual é `EP4CE22F17C6`.
3. Execute **Processing → Start Compilation** para sintetizar e implementar o projeto.

As atribuições de pinos estão em `memoria.qsf` e correspondem a uma placa específica; confira-as antes de programar outra placa.

## Simulação

Abra `Waveform.vwf` no editor de formas de onda do Quartus, configure e execute a simulação pelo fluxo de simulação disponível na sua instalação. Os resultados e arquivos intermediários são gerados pelo Quartus nas pastas ignoradas pelo Git.
