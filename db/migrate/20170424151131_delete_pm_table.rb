class DeletePmTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :pms
  end
end
