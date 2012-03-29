#encoding: utf-8
class PagesController < AuthorizedController
  before_filter :load_parents
  inherit_resources
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
        redirect_to '/editor' + teacher_web_space_page_path(@teacher, @web_space, @web_space.pages.first)
      end
    end
  end

  private

  def load_parents
    @teacher = Teacher.find(params[:teacher_id])
    @web_space = @teacher.web_spaces.find(params[:web_space_id])
  end

end
