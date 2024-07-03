# Usando delete para remover um elemento específico

puts "Ola, digite numero inteiros para formar nosso array, separado por espaço"
input = gets.chomp
nums = input.split.map(&:to_i)
puts "array: #{nums}"
