class RemoveColumnsSupplier < ActiveRecord::Migration
  def change
    remove_column :users, :supplier_id
  end
end
