class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SetSource

  def current_user
  super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email:"guest@guest.com")
  end

end
