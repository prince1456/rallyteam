class AddCulomnToFavetweets < ActiveRecord::Migration[5.1]
  def change
    add_column :favtweets, :image, :string
    add_column :favtweets, :screen_name, :string
    add_column :favtweets, :text, :string
    add_column :favtweets, :followers, :string
    add_column :favtweets, :date, :string
  end
end
