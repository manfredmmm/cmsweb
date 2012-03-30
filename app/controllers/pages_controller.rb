#encoding: utf-8
class PagesController < AuthorizedController
  inherit_resources
  before_filter :load_parents
  belongs_to :web_space
  #nested_belongs_to :teacher, :web_spaces

  load_and_authorize_resource :teacher
  load_and_authorize_resource :web_space, :through => :teacher
  load_and_authorize_resource :page, :through => :web_space

  def mercury_update
    page = Page.find(params[:id])
    page.name = params[:content][:page_name][:value]
    page.content = params[:content][:page_content][:value]
    page.save!
    render text: ""
    flash[:notice] = "Pàgina actualitzada correctament."
  end

  def create
    create! do |format|
      format.html do
        flash[:notice] = "Posi un títol i contingut de la pàgina."
        redirect_to '/editor' + teacher_web_space_page_path(@teacher, @web_space, @web_space.pages.last)
      end
    end
  end

  def destroy
    destroy! do |format|
      format.html do
        flash[:notice] = "La pàgina ha estat eliminada"
        redirect_to teacher_my_web_spaces_path(@teacher)
      end
    end
  end

  private

  def load_parents
    @teacher = Teacher.find(params[:teacher_id])
    @web_space = @teacher.web_spaces.find(params[:web_space_id])
  end
end
