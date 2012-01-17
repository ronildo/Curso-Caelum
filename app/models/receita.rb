class Receita < ActiveRecord::Base
	validates_presence_of :conteudo,
												:message => "A receita precisa ter uma receita :)"

	validates_presence_of :prato_id
	validates_associated	:prato

	belongs_to :prato

end
