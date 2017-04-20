class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.integer :subtitle_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
