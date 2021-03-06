#encoding: utf-8
class TeachersController < AuthorizedController
  inherit_resources
  before_filter :load_departments, :only => [:index,:edit,:update]
  #load_and_authorize_resource :teacher

  actions :index, :show, :edit, :update

  def index
    @search = Teacher.search(params[:search])
    @teachers = @search.paginate(:page => params[:page], :per_page => 10)
  end

  def update
    if params[:teacher][:password].blank? || params[:teacher][:password_confirmation].blank?
      params[:teacher][:password] = nil
      params[:teacher][:password_confirmation] = nil
    end
    update! do |format|
      format.html do
        # Don't update password if it is blank
        redirect_to edit_teacher_path(current_user), notice: t('alerts.profile_updated')
      end
    end
  end

  def my_spaces
    @teacher = User.find(current_user)
    @my_web_spaces = WebSpace.where(:teacher_id => current_user)
  end
end
