class SoundcloudController < ApplicationController
 	def connect
		# create client object with app credentials
		client = Soundcloud.new(:client_id => ENV["SOUNDCLOUD_CLIENT_ID"],
	                        :client_secret => ENV["SOUNDCLOUD_CLIENT_SECRET"],
	                        :redirect_uri => "http://localhost:3000/soundcloud/oauth-callback",
	                        :response_type => 'code')

		# redirect user to authorize URL
		redirect_to client.authorize_url(:grant_type => 'authorization_code', :scope => 'non-expiring', :display => 'popup') 
	  end

	  def connected

	  end

	  def destroy
	   
	  end

end
