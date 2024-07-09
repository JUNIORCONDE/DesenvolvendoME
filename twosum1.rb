puts "Digite os numeros do array, separados por espaços"
  nums = gets.chomp.split.map(&:to_i)
  puts "Array: #{nums}"
  puts "Numero de elementos do array: #{nums.size}"

  puts "Digite o valor do Alvo:"
  target = gets.chomp.to_i
  puts "Valor do Alvo: #{target}"

  # Início da lógica para encontrar os índices dos elementos que somam ao alvo
  num_to_index = {}
  result = nil

  nums.each_with_index do |num, i|
    complement = target - num
    if num_to_index.key?(complement)
      result = [num_to_index[complement], i]
      break
    end
    num_to_index[num] = i
  end

  if result
    puts "Índices dos elementos que somam ao alvo: #{result.inspect}"
  else
    puts "Nenhum par de elementos soma ao alvo."
  end

=begin
    Esse código realiza a mesma tarefa que o código original com método,
     mas está totalmente escrito no escopo principal sem utilizar definição de método.
     Essa abordagem pode ser útil para scripts simples ou aprendizado, mas para projetos maiores e mais complexos,
     organizar o código em métodos é a prática recomendada.
=end
