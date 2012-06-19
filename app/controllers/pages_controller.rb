#encoding: utf-8
class PagesController < AuthorizedController
  inherit_resources
  before_filter :load_parents
  nested_belongs_to :teacher, :web_space

  load_and_authorize_resource :teacher
  load_and_authorize_resource :web_space, :through => :teacher
  load_and_authorize_resource :page, :through => :web_space

  before_filter :last_page?, :only => [:destroy]

  def mercury_update
    page = Page.find(params[:id])
    page.name = params[:content][:page_name][:value]
    page.content = params[:content][:page_content][:value]
    page.save!
    render text: ""
    flash[:notice] = t('alerts.updated')
  end

  def create
    create! do |format|
      format.html do
        flash[:notice] = t('alerts.insert')
        redirect_to '/editor' + teacher_web_space_page_path(@teacher, @web_space, @web_space.pages.last)
      end
    end
  end

  def destroy
    destroy! do |format|
      format.html do
        flash[:notice] = t('alerts.deleted')
        redirect_to teacher_web_space_page_path(@teacher, @web_space, @web_space.pages.last)
      end
    end
  end

  private

  def load_parents
    @teacher = Teacher.find(params[:teacher_id])
    @web_space = @teacher.web_spaces.find(params[:web_space_id])
  end

  def last_page?
    if @web_space.pages.count == 1
      redirect_to teacher_my_spaces_path(@teacher), :notice => t('alerts.delete')
    end
  end
end
