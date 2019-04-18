class Midstream < ActiveRecord::Base
    has_many :mpucontracts
    has_many :mprcontracts
    has_many :purchasers, through: :mpucontracts
    has_many :producers, through: :mprcontracts
end