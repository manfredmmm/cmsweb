#
# En el Home es veura l'enllaç al directori de professors
# i als espais webs que hagi creat un professor
#
class HomeController < ApplicationController
  
  #before_filter :authenticate_user!s
  def index
    @teachers = Teacher.all
  end
  
end
