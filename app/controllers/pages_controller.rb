class PagesController < AuthorizedController
  inherit_resources
  belongs_to :web_spaces

end
