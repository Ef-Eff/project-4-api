class CreateVoteTable < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.references :subject, polymorphic: true, index: true

      t.timestamps
    end
  end
end
