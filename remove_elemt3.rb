# Usando delete para remover um elemento específico

# codigo sem utilização de metodo, class e definição
# Solicitar ao usuário que insira os números para formar o array

puts "Ola, digite numero inteiros para formar nosso array, separado por espaço"
input = gets.chomp
nums = input.split.map(&:to_i)
puts "array: #{nums}"

# Solicitar ao usuário que insira o valor a ser removido
puts "Digite o valor que deseja remover do array:"
  val = gets.chomp.to_i
