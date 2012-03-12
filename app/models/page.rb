class Page < ActiveRecord::Base
  #Associations
  belongs_to :web_space

  #Validations
  validates :name, :presence => true
end
