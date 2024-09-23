require 'json'

class Estoque
  def initialize
    @produtos = []
    carregar_produtos
  end

  def adicionar_produto(codigo, descricao, fornecedor, data_compra, valor_compra)
    produto = {
      codigo: codigo,
      descricao: descricao,
      fornecedor: fornecedor,
      data_compra: data_compra,
      valor_compra: valor_compra
    }
    @produtos << produto
    puts "Produto adicionado com sucesso!"
    salvar_produtos
  end

  def listar_produtos
    puts "Produtos em Estoque:"
    @produtos.each do |produto|
      puts "Código: #{produto[:codigo]}, Descrição: #{produto[:descricao]}, Fornecedor: #{produto[:fornecedor]}, Data da Compra: #{produto[:data_compra]}, Valor: #{produto[:valor_compra]}"
    end
  end

  private

  def salvar_produtos
    File.open("produtos.json", "w") do |f|
      f.write(JSON.pretty_generate(@produtos))
    end
  end

  def carregar_produtos
    if File.exist?("produtos.json")
      @produtos = JSON.parse(File.read("produtos.json"), symbolize_names: true)
    end
  end
end

# Uso do controle de estoque
estoque = Estoque.new
estoque.adicionar_produto("001", "Produto A", "Fornecedor X", "2024-09-01", 100.00)
estoque.adicionar_produto("002", "Produto B", "Fornecedor Y", "2024-09-15", 150.00)

estoque.listar_produtos
