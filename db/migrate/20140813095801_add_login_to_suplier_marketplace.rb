class AddLoginToSuplierMarketplace < ActiveRecord::Migration
  def change
    add_column :suplier_marketplaces, :login, :string
    add_column :suplier_marketplaces, :password, :string
  end
end
