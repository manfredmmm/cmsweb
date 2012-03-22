#encoding: utf-8
class WebSpacesController < AuthorizedController
  inherit_resources
  belongs_to :teacher
  #load_and_authorize_resource :teacher
  #load_and_authorize_resource :web_space, :through => :teacher

  def new
    flash[:notice] = "Pas 1: Posi un títol per l'espai web."
  end

  def create
    create! do |format|
      format.html do
        #flash[:notice] = "Pas 2: Insereixi el contigut de l'espai web."
        #redirect_to '/editor' + teacher_web_space_path(@teacher, @web_space)
        redirect_to '/editor' + teacher_web_space_page_path(@teacher, @web_space, @web_space.pages.first)
      end
    end
  end

  def destroy
    destroy! do |format|
      format.html do
        flash[:notice] = "L'espai web ha estat eliminat."
        redirect_to teacher_my_spaces_path(@teacher)
      end
    end
  end
end
