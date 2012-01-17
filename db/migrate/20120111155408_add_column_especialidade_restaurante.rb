class AddColumnEspecialidadeRestaurante < ActiveRecord::Migration
  def self.up
		add_column :restaurantes, :especialidade, :string
  end

  def self.down
		remove_column :restaurantes, :especialidade
  end
end
