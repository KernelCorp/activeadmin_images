class <%= name%> < ActiveRecord::Base

  attr_accessible attachment

  has_attached_file attachment

end
