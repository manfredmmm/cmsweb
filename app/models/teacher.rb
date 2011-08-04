class Teacher < User
  belongs_to :department
  has_many :web_space
  mount_uploader :avatar, AvatarUploader
  
  attr_accessible :name, :surname, :birthday, :office, :department_id, :research_area, :avatar
end
