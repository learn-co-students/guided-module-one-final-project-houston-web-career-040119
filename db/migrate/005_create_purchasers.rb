class CreatePurchasers < ActiveRecord::Migration[5.2]
  def change
    create_table :purchasers do |t|
      t.string :purchaser_name
      t.text :type_of_product
      t.integer :amount_demand
      t.string :location
      t.integer :price_per_bbl
    end
  end
end
