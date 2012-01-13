#encoding=UTF-8
require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
	fixtures :restaurantes

	def test_restaurante
		assert_equal Restaurante.all.count, 2

		r = Restaurante.new
		r.nome = restaurantes(:fazano).nome
		r.endereco = restaurantes(:fazano).endereco
		r.especialidade = restaurantes(:fazano).especialidade

		assert !r.save, "Nao deve salvar restaurante com nome igual"
		assert_equal r.errors.on(:nome), "O nome já está cadastrado"
		assert_equal r.errors.on(:endereco), "O endereço já está cadastrado"
		
	
	end
end
