class HomeController < ApplicationController
  def index
    if current_user.type.nil?
      current_user.update_attribute(:type, "Teacher")
    end

    @webspaces = WebSpace.order(:updated_at).limit(15).all
    @teachers  = Teacher.order(:updated_at).limit(15).all
    @search = nil

    if params[:search]
      @search = Teacher.search do
        fulltext params[:search]
      end
      @search = @search.results.limit(15)

      @web_search = WebSpace.search do
        fulltext params[:search]
      end
      @web_search = @web_search.results.limit(15)
    end
  end
end
