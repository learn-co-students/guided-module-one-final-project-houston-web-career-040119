class CreateMidstreamPurchaserContract < ActiveRecord::Migration[5.2]
  def change
    create_table :mpucontracts do |t|
      t.string :name
      t.integer :midstream_id
      t.integer :purchaser_id
      t.integer :total_price
    end
  end
end


