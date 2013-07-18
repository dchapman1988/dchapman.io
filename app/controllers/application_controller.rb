class ApplicationController < ActionController::Base
  before_filter :set_start_time
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_start_time
    @start_time = Time.now.usec
  end

  def authentication_required
    redirect_to root_path, notice: "Authentication required." unless current_user.present?
  end
end
