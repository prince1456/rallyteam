class AddColumnToFavetweets < ActiveRecord::Migration[5.1]
  def change
    add_column :favtweets, :tweets, :float
  end
end
