class HomeController < ApplicationController
  def index
    if current_user.type.nil?
      current_user.update_attribute(:type, "Teacher")
    end

    @webspaces = WebSpace.find(:all, :order => "updated_at")
    @teachers = Teacher.find(:all, :order => "created_at")
  end
end
