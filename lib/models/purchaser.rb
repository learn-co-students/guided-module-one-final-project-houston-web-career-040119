class Purchaser < ActiveRecord::Base
    has_many :midstream_purchaser_contracts
    has_many :midstreams, through: :midstream_purchaser_contracts
end
