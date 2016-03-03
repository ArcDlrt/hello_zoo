class RenameTableSpeciesToBreeds < ActiveRecord::Migration
  def change
    rename_table :species, :breeds
    rename_column :animals, :species_id, :breed_id
  end
end
