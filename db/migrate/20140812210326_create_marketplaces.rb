class CreateMarketplaces < ActiveRecord::Migration
  def change
    create_table :marketplaces do |t|
      t.string :name
      t.string :url
      t.string :retrieve_data_type
      t.string :input_data_type

      t.timestamps
    end
  end
end
