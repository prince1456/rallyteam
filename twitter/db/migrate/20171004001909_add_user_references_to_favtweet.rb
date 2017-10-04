class AddUserReferencesToFavtweet < ActiveRecord::Migration[5.1]
  def change
    add_reference :favtweets, :user, index: true
  end
end
