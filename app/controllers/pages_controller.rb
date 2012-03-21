#encoding: utf-8
class PagesController < AuthorizedController
  inherit_resources
  belongs_to :web_spaces

  def mercury_update
    page = Page.find(params[:id])
    page.name = params[:content][:page_name][:value]
    page.content = params[:content][:page_content][:value]
    page.save!
    render text: ""
    flash[:notice] = "Pàgina actualitzada correctament."
  end
end
