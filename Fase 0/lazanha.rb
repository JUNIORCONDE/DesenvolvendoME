class Lasagna
  TEMPO_ESPERADO_NO_FORNO = 40 # Tempo esperado no forno em minutos

  # Método para calcular o tempo restante no forno
  def tempo_restante_no_forno(minutos_no_forno)
    TEMPO_ESPERADO_NO_FORNO - minutos_no_forno
  end

  # Método para calcular o tempo de preparação em minutos
  def tempo_preparo_em_minutos(numero_de_camadas)
    numero_de_camadas * 2
  end

  # Método para calcular o tempo total de trabalho em minutos
  def tempo_total_em_minutos(numero_de_camadas:, minutos_no_forno:)
    tempo_preparo_em_minutos(numero_de_camadas) + minutos_no_forno
  end
end

# Criação de uma instância da classe Lasagna
lasanha = Lasagna.new

# Entrada de dados pelo usuário
puts "Quantos minutos a lasanha já ficou no forno?"
minutos_no_forno = gets.to_i

puts "Quantas camadas tem a lasanha?"
numero_de_camadas = gets.to_i

# Cálculo dos resultados
tempo_restante = lasanha.tempo_restante_no_forno(minutos_no_forno)
tempo_preparo = lasanha.tempo_preparo_em_minutos(numero_de_camadas)
tempo_total = lasanha.tempo_total_em_minutos(numero_de_camadas: numero_de_camadas, minutos_no_forno: minutos_no_forno)

# Exibição dos resultados
puts "Tempo restante no forno: #{tempo_restante} minutos"
puts "Tempo de preparação: #{tempo_preparo} minutos"
puts "Tempo total de trabalho: #{tempo_total} minutos"
