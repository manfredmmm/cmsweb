class WebSpace < ActiveRecord::Base
  #Associations
  belongs_to :teacher

  #Validations
  validates :name, :presence => true
end
