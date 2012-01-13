class Qualificacao < ActiveRecord::Base
	validates_presence_of :nota, 
												:message => "Precisa ter uma nota"

	validates_presence_of :valor_gasto,
												:message => "Precisamos saber quanto voce gastou!"

	validates_numericality_of :nota,
														:greater_than_or_equal_to => 0,
														:less_than_or_equal_to => 10,
														:message => "Sua nota tem que ser de 0 a 10"

	validates_numericality_of :valor_gasto,
														:greater_than => 0,
														:message => "O valor gasto precisa ser maior que 0"

	validates_presence_of :cliente_id, :restaurante_id
	validates_associated 	:cliente, :restaurante

	belongs_to	:cliente
	belongs_to	:restaurante
	has_many		:comentarios, :as => :comentavel

end
