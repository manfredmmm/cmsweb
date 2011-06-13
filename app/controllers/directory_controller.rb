class DirectoryController < ApplicationController
  
  def index
    @users = User.all
    @departments = Department.all
    @teachers = Teacher.all
  end
  
end
