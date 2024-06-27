# Definindo o hash ROMAN_VALUES globalmente
ROMAN_VALUES = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
}

# Solicitando entrada do usuário
puts "Digite um número romano: "
s = gets.chomp

# Inicializando variáveis
total = 0
prev_value = 0
explanation = ""

# Iterando sobre cada caractere da string de números romanos em ordem reversa
s.reverse.each_char do |char|
  value = ROMAN_VALUES[char]
  if value < prev_value
    total -= value
    explanation += "-#{value} (#{char}) "
  else
    total += value
    explanation += "+#{value} (#{char}) "
  end
  prev_value = value
end

# Exibindo o resultado
puts "O valor inteiro é: #{total}"
puts "Explicação da somatória: #{explanation.strip}"
