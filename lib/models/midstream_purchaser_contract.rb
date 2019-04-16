class MPuContract < ActiveRecord::Base
    belongs_to :purchaser
    has_many :users
end
