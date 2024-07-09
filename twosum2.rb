puts "Digite os numeros do array, separados por espaços"
  array = gets.chomp.split.map(&:to_i)
  puts "Array: #{array}"
  puts "Numero de elementos do array: #{array.size}"

  puts "Digite o valor do Alvo:"
  target = gets.chomp.to_i
  puts "Valor do Alvo: #{target}"

  # Início da lógica para encontrar os índices dos elementos que somam ao alvo
  elemento_para_indice = {}
  result = nil

  array.each_with_index do |elemento, i|
    complemento = target - elemento
    if elemento_para_indice.key?(complemento)
      result = [elemento_para_indice[complemento], i]
      break
    end
    elemento_para_indice[elemento] = i
  end

  if result
    puts "Índices dos elementos que somam ao alvo: #{result.inspect}"
  else
    puts "Nenhum par de elementos soma ao alvo."
  end
