class AddCulomnToFavtweets < ActiveRecord::Migration[5.1]
  def change
    add_column :favtweets, :name, :string
  end
end
