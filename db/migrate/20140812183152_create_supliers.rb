class CreateSupliers < ActiveRecord::Migration
  def change
    create_table :supliers do |t|
      t.string :name
      t.string :cnpj
      t.string :country

      t.timestamps
    end
  end
end
