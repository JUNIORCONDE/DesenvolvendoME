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
def two_sum(nums, target)
 numero = {}
  nums.each_with_index do |cabra, i|
    complement = target - cabra
    if numero.key?(complement)
      return [numero[complement], i]
    end
    numero[cabra] = i
  end
  nil
end

result = two_sum(nums, target)
if result
  puts "Índices dos elementos que somam ao alvo: #{result.inspect}"
else
  puts "Nenhum par de elementos soma ao alvo."
end

=begin
o codigo acima estou usando para descobri, os simbolo, nome, que nos referimos para alocar algum elemento, sem ser
liguagem nativa do ruby
=end

# codigo conforme exposto pelo chat gpt
=begin
# Solicitar entrada do Usuário
puts "Digite os numeros do array, separados por espaços"
nums = gets.chomp.split.map(&:to_i)
puts "Array: #{nums}"
puts "Numero de elementos do array #{nums.size}"

puts "digite o valor do Alvo:"
target = gets.chomp.to_i
puts "Valor do Alvo #{target}"

# Metodo para encontrar os indices dos dois números que soma ao alvo.
def two_sum(nums, target)
  num_to_index = {}
  nums.each_with_index do |num, i|
    complement = target - num
    if num_to_index.key?(complement)
      return [num_to_index[complement], i]
    end
    num_to_index[num] = i
  end
  nil
end

result = two_sum(nums, target)
if result
  puts "Índices dos elementos que somam ao alvo: #{result.inspect}"
else
  puts "Nenhum par de elementos soma ao alvo."
end

=end
