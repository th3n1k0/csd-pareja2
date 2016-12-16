Feature:
    Como Thiago (arbitro de tennis)
    Quiero jugar adivinar parejas
    Para divertirme y ejercitar la memoria

Scenario: Debe tener el titulo "Bienvenido a Buscar Parejas"
  Given que abro la applicacion
  Then debo ver "Bienvenido a Buscar Parejas" 
  
# Scenario: Debo poder configurar el nombre del jugador
#   Given que abro la applicacion
#   When defino a "Thiago" como jugador
#   And inicio una partida
#   Then debo ver "Bienvenido Thiago"