class ChangeVotesForSubtitles < ActiveRecord::Migration[5.0]
  def change
    change_table :subtitles do |t|
      t.change :votes, :integer, default: 0
    end
  end
end
