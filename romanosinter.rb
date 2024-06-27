# conforme proposto pelo exercicio, devemos criar um codigo, para converte numeros romanos em inteiros
# exemplos abaixo estamos usando (class e def)
class RomanNumerals
  ROMAN_VALUES = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  def self.roman_to_integer(s)
    total = 0
    prev_value = 0

    s.reverse.each_char do |char|
      value = ROMAN_VALUES[char]
      if value < prev_value
        total -= value
      else
        total += value
      end
      prev_value = value
    end

    total
  end
end

# Exemplos de uso
puts "Numeros Romanos I / V / X / L / C / D / M - Digitar em Letras caixa Alta"


# Entrada do usuário
puts "Digite um número romano: "
input = gets.chomp
puts "O valor inteiro é: #{RomanNumerals.roman_to_integer(input)}"
