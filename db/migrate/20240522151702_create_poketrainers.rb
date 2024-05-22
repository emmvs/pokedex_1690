class CreatePoketrainers < ActiveRecord::Migration[7.1]
  def change
    create_table :poketrainers do |t|
      t.string :name
      t.string :country
      t.integer :age

      t.timestamps
    end
  end
end
