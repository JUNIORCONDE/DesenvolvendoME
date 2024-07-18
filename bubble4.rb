# Estudando o algortimo bubble sort, com entrada do usuária e ordenação dos dados
# Utilizando ajuda da IAa, para aprendizado

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
tam_array = gets.chomp.to_i

# Verifica se o tamanho é positivo
if tam_array > 0

# Cria um array vazio
  num_array = []

# Loop para coletar os elementos do array
  tam_array.times do |i|
    puts "Digite o número #{i + 1}: "
    numero = gets.chomp.to_i
    num_array << numero
  end

# Exibe o array original
 puts "Array original: #{num_array.inspect}"

# Aplica o Bubble Sort ao array
sorted_array = bubble_sort(num_array)  #nessa linha de comando, ele pega o array digitado pelo usuário

# Exibe o array ordenado
  puts "Array ordenado: #{sorted_array.inspect}"
else
  puts "Por favor, digite um tamanho de array positivo."
end
