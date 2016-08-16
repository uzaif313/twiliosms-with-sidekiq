class SubNotifireWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  # recurrence { daily }
  # recurrence { weekly.day(:monday) }
  recurrence { minutely(1) }

  def perform(name,count)
  	puts "===#{name}===#{count}==="
		@client = Twilio::REST::Client.new
		  ['','','','',''].each do |no|
		  	@client.messages.create(
          from: '',
          to: no,
          body: "Message for #{no}"
      )
		  end
  end

  def redis
       @redis ||= Redis.new(url: (ENV['REDISTOGO_URL'] || 'redis://127.0.0.1:6379'))
  end

end