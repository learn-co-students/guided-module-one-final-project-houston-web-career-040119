class CreateContracts < ActiveRecord::Migration[5.0]
  def change
  create_table :contracts do |t|
    t.string :midstream_id
    t.string :producer_id
    end
  end
end
