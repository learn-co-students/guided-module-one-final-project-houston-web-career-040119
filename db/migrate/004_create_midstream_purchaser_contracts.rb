class CreateMidstreamPurchaserContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :m_pu_contracts do |t|
      t.integer :midstream_id
      t.integer :purchaser_id
      t.integer :total_price
      t.date :delivery_date
    end
  end
end


