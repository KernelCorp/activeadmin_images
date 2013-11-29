class <%= name%> < ActiveRecord::Base

  attr_accessible :attachment

  has_attached_file :attachment,
                               :styles => {
                               :thumb => ["50x50#", :png]
                               },
                               :path => ':rails_root/public/system/images/:style/:filename',
                               :url => '/system/images/:style/:filename'

end
