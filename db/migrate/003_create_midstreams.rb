class CreateMidstreams < ActiveRecord::Migration[5.0]
  def change
    create_table :midstreams do |t|
      t.string :rep_name
      t.string :user_name
      t.string :password
    end
  end
end
