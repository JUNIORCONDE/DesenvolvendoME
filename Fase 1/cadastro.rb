class Aluno
  attr_acessor :nome, :idade
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
