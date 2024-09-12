class Aluno
  attr_accessor :nome, :idade
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def to_s
    "Nome: #{@nome}, Idade: #{@idade}"
  end
end

class CadastroDeAlunos
  def initialize
    @alunos = []
  end

  # Adiciona um novo aluno com validação de duplicatas
  def adicionar_aluno(nome, idade)
    if @alunos.any? { |aluno| aluno.nome == nome }
      puts "Aluno com o nome #{nome} já está cadastrado."
    else
      aluno = Aluno.new(nome, idade)
      @alunos << aluno
      puts "Aluno #{nome} cadastrado com sucesso!"
    end
  end

# Lista todos os alunos
def listar_alunos
  if @alunos.empty?
    puts "Nenhum aluno Casdastrado."
  else
    puts "Alunos Cadastrados:"
    @alunos.each { |aluno| puts aluno }
  end
end

# Remove um aluno pelo nome, com feedback mais detalhado
def remover_aluno(nome)
  aluno_encontrado = @alunos.find { |aluno| aluno.nome == nome }
  if aluno_encontrado
    @alunos.delete(aluno_encontrado)
    puts "Aluno #{aluno_encontrado.nome}, Idade: #{aluno_encontrado.idade} removido com sucesso."
  else
    puts "Aluno #{nome} não encontrado."
  end
end
end
