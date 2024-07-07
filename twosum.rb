# todos esses desafios estão sendo estudado e realizado com ajuda co GPT, para compreensão de cada linha, comando e função

# Solicitar entrada do Usuário
puts "Digite os numeros do array, separados por espaços"
nums = gets.chomp.split.map(&:to_i)
puts "Array: #{nums}"
puts "Numero de elementos do array #{nums.size}"

puts "digite o valor do Alvo:"
target = gets.chomp.to_i
puts "Valor do Alvo #{target}"

# Metodo para encontrar os indices dos dois números que soma ao alvo.
