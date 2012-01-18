class WebSpacesController < AuthorizedController
  inherit_resources
  belongs_to :teacher

  def mercury_update
    page = WebSpace.find(params[:id])
    page.name = params[:content][:page_name][:value]
    page.content = params[:content][:page_content][:value]
    page.save!
    render text: ""
  end

  def create
    create!(:notice => "L'espai web s'ha creat correctament.")
  end

  def destroy
    destroy!(:notice => "L'espai web ha estat eliminat.")
  end
end
