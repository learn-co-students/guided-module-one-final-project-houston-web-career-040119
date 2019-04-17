class CreateMidstreamProducerContracts < ActiveRecord::Migration[5.2]
  def change
  create_table :mprcontracts do |t|
    t.string :midstream_id
    t.string :producer_id
    t.integer :total_price
    end
  end
end
