#encoding: utf-8
class WebSpacesController < AuthorizedController
  inherit_resources
  belongs_to :teacher

  def mercury_update
    page = WebSpace.find(params[:id])
    page.name = params[:content][:page_name][:value]
    page.content = params[:content][:page_content][:value]
    page.save!
    render text: ""
    flash[:notice] = "L'espai web s'ha actualitzat correctament."
  end

  def new
    flash[:notice] = "Pas 1: Posi un títol per l'espai web."
  end

  def create
    flash[:notice] = "Pas 2: Apreti Editar per insertar el contigut de l'espai web."
    create!(:notice => "Pas 2: Insereixi el contigut de l'espai web.")
  end

  def destroy
    destroy!(:notice => "L'espai web ha estat eliminat.")
  end
end
