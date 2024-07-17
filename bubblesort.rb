# vamos criar um array, com entrada do numeros pelo usuários

# Pede ao usuário para digitar o tamanho do array
puts "Digite o tamanho do array: "
  tamanho = gets.chomp.to_i
# Verifica se o tamanho é positivo
if tamanho > 0
  # Cria um array vazio
  numeros = []

  # Loop para coletar os elementos do array
  tamanho.times do |i|
    print "Digite o número #{i + 1}: "
    numero = gets.chomp.to_i
    numeros << numero
  end

  # Exibe o array final
  puts "Você digitou os números: #{numeros.inspect}"
else
  puts "Por favor, digite um tamanho de array positivo."
end




















=begin
array = [64, 34, 25, 12, 22, 11, 90]
n = array.length

puts "#{array}"

loop do
  swapped = false
  (n-1).times do |i|
    if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i] # Troca os elementos
      swapped = true
    end
  end

  break unless swapped
end

puts "Array ordenado: #{array}"
=end
