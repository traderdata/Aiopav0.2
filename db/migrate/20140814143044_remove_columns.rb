class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :users, :suplier_id
  end
end
