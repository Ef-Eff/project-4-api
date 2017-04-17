class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.integer :rating
      t.integer :tweet_volume

      t.timestamps
    end
  end
end
