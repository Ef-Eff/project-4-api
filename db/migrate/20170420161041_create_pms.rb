class CreatePms < ActiveRecord::Migration[5.0]
  def change
    create_table :pms do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.text :body
      t.string :image
      t.string :subject

      t.timestamps
    end
  end
end
