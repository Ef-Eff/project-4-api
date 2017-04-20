class RemoveSubtitleFromVotes < ActiveRecord::Migration[5.0]
  def change
    remove_column :votes, :subtitle_id
    remove_column :votes, :comment_id
    add_column :votes, :subtitle_or_comment_id, :integer
  end
end
