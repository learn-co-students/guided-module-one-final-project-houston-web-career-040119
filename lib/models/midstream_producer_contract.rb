class MPrContract < ActiveRecord::Base
    belongs_to :midstream
    belongs_to :producer
end
