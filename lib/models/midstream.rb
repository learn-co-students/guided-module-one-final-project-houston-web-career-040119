class Midstream < ActiveRecord::Base
    has_many :contracts
    has_many :contracts, through: :producers

  end
#  attr_accessor  :rep_name, :user_name, :password
#  @@all = []
#
#  def initialize (rep_name, user_name, password)
#    @rep_name = rep_name
#    @user_name = user_name
#    @password = password
#    @@all = self
#  end
#
#  def self.all
#    @@all
#  end
#
# def contracts
#     Contract.all.select do |contract|
#     contract.midstream == self
# end
#
# def producers
#   self.producers.map |producer|
#   producer.midstream
#    end
#   end
# end
