class WebSpacesController < AuthorizedController
  inherit_resources
  belongs_to :teacher
end
