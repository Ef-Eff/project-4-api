class CreateSubtitles < ActiveRecord::Migration[5.0]
  def change
    create_table :subtitles do |t|
      t.string :title
      t.integer :votes
      t.references :user, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
