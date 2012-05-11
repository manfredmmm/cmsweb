class HomeController < ApplicationController
  def index
    if current_user.type.nil?
      current_user.update_attribute(:type, "Teacher")
    end

    @webspaces = WebSpace.order(:updated_at).limit(10).all
    @teachers  = Teacher.order(:updated_at).limit(10).all
    @search = nil

    if params[:search]
      @search = Teacher.solr_search do
        fulltext params[:search]
      end
      @search = @search.results

      @web_search = WebSpace.solr_search do
        fulltext params[:search]
      end
      @web_search = @web_search.results
    end
  end
end
