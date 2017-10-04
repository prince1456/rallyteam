class CreateFavtweets < ActiveRecord::Migration[5.1]
  def change
    create_table :favtweets do |t|
      t.intege :tweets

      t.timestamps
    end
  end
end
