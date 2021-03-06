class ApplicationController < ActionController::Base
	before_action :user_is_signed_in
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  unless Rails.env.development?
  	protect_from_forgery with: :exception
  end
  include SessionsHelper

  private
  def user_is_signed_in
  	unless current_user
  		redirect_to login_path, notice: 'Access forbidden'
  	end
  end
end
