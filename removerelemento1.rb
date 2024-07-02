def remove_element(nums, val)
  k = 0 # Inicializamos o ponteiro k, que irá contar os elementos diferentes de val

  # Percorremos o array com o ponteiro i
  nums.each do |num|
    # Se o elemento atual não é igual a val, movemos ele para a posição k
    if num != val
      nums[k] = num
      k += 1 # Incrementamos k
    end
  end

  # Retornamos o número de elementos que não são iguais a val
  k
end

# Solicitar ao usuário que insira os números para formar o array
puts "Digite os números para formar o array, separados por espaços:"
input = gets.chomp
nums = input.split.map(&:to_i) # Converte a entrada do usuário em um array de inteiros

# Solicitar ao usuário que insira o valor a ser removido
puts "Digite o valor que deseja remover do array:"
val = gets.chomp.to_i

# Chamar a função para remover o elemento
k = remove_element(nums, val)

# Exibir o número de elementos que não são iguais ao valor especificado
puts "Número de elementos que não são iguais a #{val}: #{k}"
puts "Array modificado: #{nums[0...k].inspect}"
