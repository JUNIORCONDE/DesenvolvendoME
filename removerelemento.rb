def remove_element(nums, val)
  k = 0
  nums.each do |num|
    if nun !=val
      nums[k] = num
      k + 1
    end
  end
  k
end

#Exemplo de uso
nums = [3, 2, 2, 3]
val = 3
k = remove_element(nums, val)
puts "Número de elementos que não são iguais a #{val}: #{k}"
puts "Array modificado: #{nums[0...k].inspect}"
