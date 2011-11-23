#
# En el Home es veura l'enllaç al directori de professors
# i als espais webs que hagi creat un professor
#
class HomeController < ApplicationController
  def index
    @teachers = Teacher.all
    if current_user.type.nil?
      current_user.update_attribute(:type, "Teacher")
    end
  end
end
