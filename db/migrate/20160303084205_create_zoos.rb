class CreateZoos < ActiveRecord::Migration
  def change
    create_table :zoos do |t|
      t.string :name, limit: 100, index: true
      t.text   :description

      t.timestamps null: false
    end
  end
end
