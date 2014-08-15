class CreateSuplierMarketplaces < ActiveRecord::Migration
  def change
    create_table :suplier_marketplaces do |t|
      t.integer :suplier_id
      t.integer :marketplace_id

      t.timestamps
    end
  end
end
