class Producer < ActiveRecord::Base
  has_many :mprcontracts
  has_many :midstreams, through: :mprcontracts
end