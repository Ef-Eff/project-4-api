class ChangeRatingFromTopic < ActiveRecord::Migration[5.0]
  def change
    change_table :topics do |t|
      t.change :rating, :integer, default: 0
    end
  end
end
