class CreateMidstream < ActiveRecord::Migration[5.2]
    def change
        create_table :midstreams do |t|
            t.string :rep_name
            t.string :user_name #use email address as a username or it will return error w a reminder
            t.string :password
        end
    end
end