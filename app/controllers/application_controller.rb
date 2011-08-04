class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  protect_from_forgery
  
  protected
  
  def load_departments
    @departments = Department.all
  end
end
