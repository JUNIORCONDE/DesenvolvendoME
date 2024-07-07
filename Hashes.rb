# Criação do hash principal para armazenar múltiplos usuários
usuarios = {}

  # Coletando dados do usuário
  puts "Digite o ID do usuário:"
  id = gets.chomp.to_i

  puts "Digite o nome do usuário:"
  usuario[:nome] = gets.chomp

  puts "Digite a idade do usuário:"
  usuario[:idade] = gets.chomp.to_i

  puts "Digite o email do usuário:"
  usuario[:email] = gets.chomp

  # Salvando o hash do usuário no hash principal, usando o ID como chave
  usuarios[id] = usuario

  # Pergunta se deseja adicionar outro usuário
  puts "Deseja adicionar outro usuário? (s/n)"
  resposta = gets.chomp.downcase
  break if resposta != 's'
end

# Exibindo todos os usuários
puts "\nUsuários cadastrados:"
usuarios.each do |id, dados|
  puts "ID: #{id}"
  dados.each do |chave, valor|
    puts "#{chave.capitalize}: #{valor}"
  end
  puts "-------------------"
end
