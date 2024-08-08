# Criação de um hash vazio para armazenar
# E solicitando entrada de daddo pelo usuaário

# Hash Vazia
dados_usuario = {}

# Coletando dados do usuário
puts "Digite seu nome:"
dados_usuario[:nome] = gets.chomp

puts "Digite sua idade:"
dados_usuario[:idade] = gets.chomp.to_i

puts "Digite seu email:"
dados_usuario[:email] = gets.chomp

# Mostrando os dados coletados
puts "\nDados do Usuário:"
dados_usuario.each do |chave, valor|
  puts "#{chave.capitalize}: #{valor}"
end
