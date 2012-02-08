class Teacher < User
  # Associations
  belongs_to :department
  has_many :web_spaces

  # Carrierwave avatar uploader
  mount_uploader :avatar, AvatarUploader

  # Attr Accessibles
  attr_accessible :name, :surname, :birthday, :office, :department_id, :research_area, :avatar

  # Virtual Attributes
  validates :name,    :presence => true
  validates :surname, :presence => true
  validates :email,   :presence => true
  validates :department, :presence => true

  # Searchable
  searchable do
    text :name
    text :surname
    text :email
    text :department
    text :research_area
  end
end
