class Url < ActiveRecord::Base
  before_create :shorten
	# This is Sinatra! Remember to create a migration!
  validates :long_url,
  		:uniqueness => true,
  		:presence => true
  		# :format => { :with => /http(s)*:\D\D\w+(.)\w+(.\D)*/}
  	def shorten
  		# write a method here
  		self.short_url = SecureRandom.hex(4)
  	end
end
