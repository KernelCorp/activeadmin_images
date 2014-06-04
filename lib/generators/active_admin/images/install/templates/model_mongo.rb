class <%= name%>
  include Mongoid::Document
  include Mongoid::Paperclip

 has_mongoid_attached_file :attachment,
                               :styles => {
                               :thumb => ["50x50#", :png]
                               },
                               :path => ':rails_root/public/system/images/:style/:filename',
                               :url => '/system/images/:style/:filename'

end
