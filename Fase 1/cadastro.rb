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
