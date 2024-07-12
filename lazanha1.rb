#Entrada pelo usuário
puts "Digite o Tempo Necessário, minutos exemplo 10, 20, 30"
Tempo_Estimado_de_Forno = gets.to_i

#Entrada pelo usuário
puts "Quantos Minutos a Lazanha Já ficou no Forno"
Minutos_No_Forno = gets.to_i
# Entrada Pelo usuário
puts "Quantas Camadas tem a Lazanha?"
Numero_de_Camadas = gets.to_i

Tempo_de_Preparo = Numero_de_Camadas * 2 + Tempo_Estimado_de_Forno



# Método para Calcular tempo restante de Forno
Tempo_Restante =  Tempo_Estimado_de_Forno - Minutos_No_Forno

puts "O tempo de Preparo é de.: #{Tempo_Estimado_de_Forno}"

puts "Minutos no Forno.: #{Minutos_No_Forno}"

puts "Tempo Restante no Forno.: #{Tempo_Restante}"

puts "Tempo de Total de Preparo é de.: #{Tempo_de_Preparo}"
