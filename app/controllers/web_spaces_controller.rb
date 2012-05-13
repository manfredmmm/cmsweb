#encoding: utf-8
class WebSpacesController < AuthorizedController
  inherit_resources
  belongs_to :teacher
  #load_and_authorize_resource :teacher
  #load_and_authorize_resource :web_space, :through => :teacher

  def index
    @search = WebSpace.search(params[:search])
    @web_spaces = @search.paginate(:page => params[:page], :per_page => 2)
  end

  def new
    flash[:notice] = t('alerts.new_web')
  end

  def create
    create! do |format|
      format.html do
        flash[:notice] = t('alerts.insert')
        redirect_to '/editor' + teacher_web_space_page_path(@teacher, @web_space, @web_space.pages.first)
      end
    end
  end

  def destroy
    destroy! do |format|
      format.html do
        flash[:notice] = t('alerts.deleted_web')
        redirect_to teacher_my_spaces_path(@teacher)
      end
    end
  end
end
