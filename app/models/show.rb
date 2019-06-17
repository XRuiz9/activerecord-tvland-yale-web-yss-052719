require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(args)
  	meep = Network.create(call_letters: args[:call_letters])
  	self.network_id = meep.id
  	# binding.pry
  	meep
  end

end