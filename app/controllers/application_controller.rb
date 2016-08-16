class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :notify

  def notify
  	SubNotifireWorker.perform_async
  end
end
