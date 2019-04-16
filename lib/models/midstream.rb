class Midstream < ActiveRecord::Base
    has_many :mpucontracts
    has_many :purchaser, through: :mpucontracts
end