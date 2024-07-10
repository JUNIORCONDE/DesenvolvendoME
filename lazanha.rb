class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(number_of_layers)
    number_of_layers * 2
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end

# Criação de uma instância da classe Lasagna
lasagna = Lasagna.new

# Entrada de dados pelo usuário
puts "Quantos minutos a lasanha já ficou no forno?"
actual_minutes_in_oven = gets.to_i

puts "Quantas camadas tem a lasanha?"
number_of_layers = gets.to_i

# Cálculo dos resultados
remaining_minutes = lasagna.remaining_minutes_in_oven(actual_minutes_in_oven)
preparation_time = lasagna.preparation_time_in_minutes(number_of_layers)
total_time = lasagna.total_time_in_minutes(number_of_layers: number_of_layers, actual_minutes_in_oven: actual_minutes_in_oven)

# Exibição dos resultados
puts "Tempo restante no forno: #{remaining_minutes} minutos"
puts "Tempo de preparação: #{preparation_time} minutos"
puts "Tempo total de trabalho: #{total_time} minutos"
