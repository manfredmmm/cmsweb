class Teacher < ActiveRecord::Base
  attr_accessible :department_id, :name, :avatar
  belongs_to :department
  has_many :web_space
  mount_uploader :avatar, AvatarUploader
  
end
