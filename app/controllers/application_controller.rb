class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :test

  def test
  	# puts "============================================="
  	# render json:params
  	# return
  		# @client = Twilio::REST::Client.new
		  # ['+919033231399','+919662402742','+918141023925','+919904921009','+919173587076'].each do |no|
		  # 	@client.messages.create(
    #       from: '+16509461170',
    #       to: no,
    #       body: "kem chho? mazama? aa #{no} tamaro chhe?"
    #   )
    #   # render json:@client
    #   end
    #   return
    puts "======test======"
    SubNotifireWorker.perform
  end
end
