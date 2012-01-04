class Teacher < User
  belongs_to :department
  has_many :web_spaces
  mount_uploader :avatar, AvatarUploader

  attr_accessible :name, :surname, :birthday, :office, :department_id, :research_area, :avatar

  validates :name,    :presence => true
  validates :surname, :presence => true
end
