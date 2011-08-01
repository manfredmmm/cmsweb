class Teacher < User
  belongs_to :department
  has_many :web_space
  mount_uploader :avatar, AvatarUploader
end
