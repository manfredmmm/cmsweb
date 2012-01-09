class HomeController < ApplicationController
  def index
    if current_user.type.nil?
      current_user.update_attribute(:type, "Teacher")
    end

    @webspaces = WebSpace.find(:all, :order => "updated_at")
    @teachers = Teacher.find(:all, :order => "created_at")
    @search = nil

    if params[:search]
      @search = Teacher.search do
        fulltext params[:search]
      end
      @search = @search.results
    end
  end
end
