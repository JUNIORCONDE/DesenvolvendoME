def bubble_sort(array)
  # Obtem o comprimento do array
  n = array.length

  # Percorre o array
  (0...n).each do |i|
    # Percorre o array novamente, mas apenas até o último elemento não ordenado
    (0...(n - i - 1)).each do |j|
      # Compara elementos adjacentes e troca se estiverem fora de ordem
      if array[j] > array[j + 1]
        # Troca de posição dos elementos
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end

  # Retorna o array ordenado
  array
end

# Exemplo de uso
arr = [3, 9, 1, 4, 7, 6, 2, 8, 5]
puts "Array original: #{arr}"

sorted_arr = bubble_sort(arr)
puts "Array ordenado: #{sorted_arr}"
