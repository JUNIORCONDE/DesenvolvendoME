# vamos criar um array, com entrada do numeros pelo usuários



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
