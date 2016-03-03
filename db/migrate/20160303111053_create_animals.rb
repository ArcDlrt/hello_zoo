class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name,       limit: 150
      t.string :description

      t.references :zoo, index: true
      t.timestamps null: false
    end
  end
end
