class WebSpace < ActiveRecord::Base
  #Associations
  belongs_to :teacher

  #Validations
  validates :name, :presence => true

  # Searchable
  searchable do
    text :name
    text :content
  end
end
