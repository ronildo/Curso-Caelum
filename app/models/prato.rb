#encoding = UTF-8
class Prato < ActiveRecord::Base
	validates_presence_of 	:nome,
													:message => "O prato precisa ter um nome"

	validates_uniqueness_of :nome,
													:message => "O precisa ter um nome único"

	validate :validate_presence_of_more_than_one_restaurante

	private
	def validate_presence_of_more_than_one_restaurante
		errors.add("restaurantes", "Precisa ter um restaurante") if restaurantes.empty?
	end

	has_and_belongs_to_many :restaurantes
	has_one :receita

end
