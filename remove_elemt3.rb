# Usando delete para remover um elemento específico

# codigo sem utilização de metodo, class e definição
# Solicitar ao usuário que insira os números para formar o array

puts "Ola, digite numero inteiros para formar nosso array, separado por espaço"
input = gets.chomp
nums = input.split.map(&:to_i)
puts "Numero de elementos do array #{nums.size}"
puts "array: #{nums}"

# Solicitar ao usuário que insira o valor a ser removido
puts "Digite o valor que deseja remover do array:"
  val = gets.chomp.to_i

# Inicializando a variaveis
# Incializamos com o Ponteiro K, que irá contar os elementos diferentes de val
k = 0

# Percorrendo o array com o ponteiro
nums.each do |num|
  # Se o elemento atual não é igual a val, movemos ele para a posição k
  if num != val
    nums[k] = num
    k += 1 # Incrementamos k
  end
end

# Exibir o número de elementos que não são iguais ao valor especificado
puts "Número de elementos que não são iguais a #{val}: #{k}"
puts "Array modificado: #{nums[0...k].inspect}"
