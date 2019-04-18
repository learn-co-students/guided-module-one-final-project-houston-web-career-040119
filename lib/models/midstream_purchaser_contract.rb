class MPuContract < ActiveRecord::Base
    belongs_to :purchaser
    belongs_to :midstream
end
