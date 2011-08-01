#
# En el Home es veura l'enllaç al directori de professors
# i als espais webs que hagi creat un professor
#
class HomeController < ApplicationController
  def index
    @teachers = Teacher.all
  end
end
