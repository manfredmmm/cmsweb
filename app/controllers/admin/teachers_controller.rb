class Admin::TeachersController < Admin::AdminController
  inherit_resources
  before_filter :load_departments, :only => [:new,:create,:edit,:update]

  def update
    # Don't update password if it is blank
    params[:teacher][:password] = nil if params[:teacher][:password].blank?
    params[:teacher][:password_confirmation] = nil if params[:teacher][:password].blank?
    update!
  end
end