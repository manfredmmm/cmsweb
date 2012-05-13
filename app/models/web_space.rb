class WebSpace < ActiveRecord::Base
  #Associations
  belongs_to :teacher
  has_many :pages, :dependent => :destroy

  #Validations
  validates :name, :presence => true
  validates :content, :presence => true

  # Callbacks
  after_create :create_default_page

  # Searchable
  searchable do
    text :name
    text :content
  end

  private

  def create_default_page
    self.pages.create(:name => "Index", :content => "")
  end
end
