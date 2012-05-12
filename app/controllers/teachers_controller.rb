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
    unless params[:oauth_token].nil?
      # Don't update password if it is blank
      params[:teacher][:password] = nil if params[:teacher][:password].blank?
      params[:teacher][:password_confirmation] = nil if params[:teacher][:password].blank?
      update!(:notice => t('alerts.profile_updated')) { root_path }
    else
      #ENV['omniauth.auth']['info'].inspect
      #current_user.update_attribute(uid, ENV['omniauth.auth']['uid'])
      #current_user.update_attribute(access_token, ENV['omniauth.auth']['credentials']['token'])
    end
  end

  def my_spaces
    @teacher = User.find(current_user)
    @my_web_spaces = WebSpace.where(:teacher_id => current_user)
  end
end
