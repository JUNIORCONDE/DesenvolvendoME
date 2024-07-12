#Entrada pelo usuário
puts "Digite o Tempo Necessário, minutos exemplo 10, 20, 30"
Tempo_Esperado_no_Forno = gets.to_i
puts "O tempo de Preparo é de.: #{Tempo_Esperado_no_Forno}"

#Entrada pelo usuário
puts "Quantos Minutos a Lazanha Já ficou no Forno"
Minutos_No_Forno = gets.to_i
puts "Minutos no Forno.: #{Minutos_No_Forno}"

# Método para Calcular tempo restante de Forno
Tempo_Restante =  Tempo_Esperado_no_Forno - Minutos_No_Forno
puts "Tempo Restante no Forno.: #{Tempo_Restante}"
