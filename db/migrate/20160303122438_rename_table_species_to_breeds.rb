class RenameTableSpeciesToBreeds < ActiveRecord::Migration
  def change
    rename_table :species, :breeds
  end
end
