class AddImageToZoos < ActiveRecord::Migration
  def change
    add_column :zoos, :image, :string
  end
end
