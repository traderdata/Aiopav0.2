class AddSuplierCorrectToUser < ActiveRecord::Migration
  def change
    add_column :users, :suplier_id, :integer
  end
end
