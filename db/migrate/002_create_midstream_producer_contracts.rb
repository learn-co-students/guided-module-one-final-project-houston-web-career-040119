class CreateMidstreamProducerContracts < ActiveRecord::Migration[5.2]
  def change
  create_table :m_pr_contracts do |t|
    t.string :midstream_id
    t.string :producer_id
    t.integer :total_price
    t.date :pickup_date
    end
  end
end
