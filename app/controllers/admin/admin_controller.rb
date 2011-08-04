class Admin::AdminController < AuthorizedController
  before_filter :check_admin
  
  protected
  
  def check_admin
    unless current_user.admin?
      flash[:error] = "You are not allowed."
      redirect_to root_path
    end
  end
end