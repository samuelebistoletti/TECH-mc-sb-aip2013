class ApplicationController < ActionController::Base
  protect_from_forgery
  #rescue_from Exception, :with => :render_error
  #rescue_from ActiveRecord::RecordNotFound, :with => :render_error
  #rescue_from ActionController::RoutingError, :with => :render_error
  #rescue_from ActionController::UnknownController, :with => :render_error
  #rescue_from ActionController::UnknownAction, :with => :render_error

  def render_error
    render :template => 'errors/error'
  end
end
