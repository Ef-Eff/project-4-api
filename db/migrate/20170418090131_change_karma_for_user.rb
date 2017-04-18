class ChangeKarmaForUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.change :karma, :integer, default: 0
    end
  end
end
