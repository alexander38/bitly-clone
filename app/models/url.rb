class Url < ActiveRecord::Base
  #this is the model file

  validates :long_url, #validation
		:uniqueness => true,
		:presence => true,
		:format => { :with => /http(s)*:\D\D\w+(.)\w+(.\D)*/}

	validates :short_url,
		:uniqueness => true

	# before_create :shorten #callback method
  # #
  # # def shorten #shortens the url by using SecureRandom
  # #   self.short_url = SecureRandom.hex(4)
  # # end
end
