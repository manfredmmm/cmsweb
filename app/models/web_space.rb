class WebSpace < ActiveRecord::Base
  #Associations
  belongs_to :teacher
  has_many :pages

  #Validations
  validates :name, :presence => true

  # Searchable
  searchable do
    text :name
    text :content
  end
end
