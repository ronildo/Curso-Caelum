#encoding=UTF-8

class Restaurante < ActiveRecord::Base
	validates_presence_of :nome, :message => "O nome deve ser preenchido"
	validates_presence_of :endereco, :message => "O endereço deve ser preenchido"
	validates_presence_of :especialidade, :message => "Especialidade deve ser preenchido"

	validates_uniqueness_of	:nome, :message => "O nome já está cadastrado"
	validates_uniqueness_of	:endereco, :message => "O endereço já está cadastrado"

	validate :primeira_lestra_deve_ser_maiuscula

	private
	def primeira_lestra_deve_ser_maiuscula
		errors.add("nome", "A primeira letra do nome deve ser maiúscula") unless nome =~ /[A-Z].*/
	end

	has_many	:qualificacoes
	has_many	:comentarios, :as => :comentavel
	has_and_belongs_to_many :pratos

	scope :massas, where(:especialidade => "Comida Italiana")
	scope :atuais, where('created_at > ?', 3.months.ago)

end
