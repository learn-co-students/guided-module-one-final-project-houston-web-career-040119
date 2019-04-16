class Contract < ActiveRecord::Base
      belongs_to :midstream
      belongs_to :producer
    end








# class Contract
#
# attr_accessor :midstream, :producer
#
# @@all = []
#
# def initialize(midstream, producer)
#     @midstream = midstream
#     @producer = producer
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
# end
