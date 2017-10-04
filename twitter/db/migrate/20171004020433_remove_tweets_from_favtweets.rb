class RemoveTweetsFromFavtweets < ActiveRecord::Migration[5.1]
  def change
    remove_column :favtweets, :tweets, :integer
  end

end
