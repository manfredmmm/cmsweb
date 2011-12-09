class TeachersController < AuthorizedController
  inherit_resources 
  before_filter :load_departments, :only => [:index,:edit,:update]
  
  actions :index, :show, :edit, :update

  def update
    # Don't update password if it is blank
    params[:teacher][:password] = nil if params[:teacher][:password].blank?
    params[:teacher][:password_confirmation] = nil if params[:teacher][:password].blank?
    update! { root_path }
  end

  def my_spaces
    @teacher = User.find(current_user)
    @my_web_spaces = WebSpace.where(:teacher_id => current_user)
  end
end
