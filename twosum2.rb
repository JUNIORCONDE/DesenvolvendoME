puts "Digite os numeros do array, separados por espaços"
nums = gets.chomp.split.map(&:to_i)
puts "Array: #{nums}"
puts "Numero de elementos do array: #{nums.size}"

puts "Digite o valor do Alvo:"
target = gets.chomp.to_i
puts "Valor do Alvo: #{target}
