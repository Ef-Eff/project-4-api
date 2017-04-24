class RemoveKarmaFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :karma, :integer
  end
end
