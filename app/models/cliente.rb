#encoding = UTF-8

class Cliente < ActiveRecord::Base
  validates_presence_of			:nome,
														:message => "O cliente precisa ter um nome!"

  validates_uniqueness_of		:nome,
														:message => "Xiii esse nome já está cadastrado!"

  validates_numericality_of	:idade,
														:greater_than => 0,
														:less_than => 100,
														:message => "A idade do cliente precisa ser entre 0 e 100"

  has_many :qualificacoes
end
