class CreatePratosRestaurantesJoinTable < ActiveRecord::Migration
  def self.up
		create_table :pratos_restaurantes, :id => false do |t|
			t.integer :prato_id
			t.integer :restaurante_id
		end

		add_index(:pratos_restaurantes, :prato_id)
		add_index(:pratos_restaurantes, :restaurante_id)
  end

  def self.down
		drop_table :pratos_restaurantes
  end
end
