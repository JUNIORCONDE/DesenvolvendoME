# vamos criar um array, com entrada do numeros pelo usuários

# Função para aplicar o Bubble Sort
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

# Pede ao usuário para digitar o tamanho do array
puts "Digite o tamanho do array: "
tamanho = gets.chomp.to_i

# Verifica se o tamanho é positivo
if tamanho > 0
  # Cria um array vazio
  numeros = []

# Loop para coletar os elementos do array
  tamanho.times do |i|
    puts "Digite o número #{i + 1}: "
    numero = gets.chomp.to_i
    numeros << numero
  end

# Exibe o array original
 puts "Array original: #{numeros.inspect}"

# Aplica o Bubble Sort ao array
sorted_array = bubble_sort(numeros)

# Exibe o array ordenado
  puts "Array ordenado: #{sorted_array.inspect}"
else
  puts "Por favor, digite um tamanho de array positivo."
end
