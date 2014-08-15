class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :login
      t.string :password
      t.string :phone
      t.string :suplier_id

      t.timestamps
    end
  end
end
