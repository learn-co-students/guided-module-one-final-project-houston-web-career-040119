class Producer < ActiveRecord::Base
  has_many :contracts
  has_many :contracts, through: :midstream
end


#  attr_accessor :type_of_product, :amount_liftable, :location, :daily_production, :price, :name
#
#  @@all =[]
#
#  def initialize (type_of_product, amount_liftable, location, daily_production, price, name)
#     @type_of_product = type_of_product
#     @amount_liftable = amount_liftable
#     @location = location
#     @daily_production = daily_production
#     @price = price
#     @name = name
#     @@all << self
# end
#
# def self.all
#   @@all
# end
#
# def contracts
#   Contract.all.select do |contract|
#     contract.producer == self
# end
#
# end
#
#
# end
