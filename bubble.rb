def bubble_sort(array)
  n = array.length

  # Percorre o array
  (0...n).each do |i|
    # Últimos i elementos já estão no lugar
    (0...(n - i - 1)).each do |j|
      # Troca se o elemento atual for maior que o próximo elemento
      if array[j] > array[j + 1]
        # Troca os elementos de posição
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end

  array # Retorna o array ordenado
end

# Exemplo de uso:
arr = [64, 34, 25, 12, 22, 11, 90]
sorted_arr = bubble_sort(arr)
puts "Array ordenado: #{sorted_arr}"
