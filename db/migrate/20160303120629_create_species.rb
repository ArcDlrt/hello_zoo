class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name, index: true, unique: true
      t.timestamps null: false
    end

    add_reference :animals, :species, index: true
  end
end
