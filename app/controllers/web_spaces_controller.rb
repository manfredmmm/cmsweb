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

  def my_spaces
    @web_spaces = WebSpace.where(:teacher_id => current_user)
  end
end
