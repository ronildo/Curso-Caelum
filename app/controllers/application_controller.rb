class ApplicationController < ActionController::Base
  protect_from_forgery

=begin
	before_filter :teste

	private
		def teste
			puts "Esse e o before filter"
		end
=end

end
