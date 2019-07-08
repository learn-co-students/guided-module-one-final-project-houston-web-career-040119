class CreateProducers < ActiveRecord::Migration[5.2]
  def change
    create_table :producers do |t|
      t.string  :producer_name
      t.string  :type_of_product
      t.integer :amount_liftable
      t.string  :location
      t.integer :daily_production
      t.integer :price_per_bbl
    end
  end
end
