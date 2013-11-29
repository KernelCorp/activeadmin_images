ActiveAdmin.register <%= name%> do
  actions :all, except: [:edit]

  collection_action :add_files, method: :post do
    @<%= name.underscore%> = <%= name%>.new(attachment: @raw_file)
    if @<%= name.underscore%>.save!
      render json: { success: true, :url => @<%= name.underscore%>.attachment.url(:thumb), :id => @<%= name.underscore%>.id }
    else
      render json: { success: false }
    end
  end

  controller do
    before_filter :parse_raw_upload, only: [:add_files]

    private
    def parse_raw_upload
      if env['HTTP_X_FILE_UPLOAD'] == 'true'
        @raw_file = env['rack.input']
        @raw_file.class.class_eval { attr_accessor :original_filename, :content_type }
        @raw_file.original_filename = env['HTTP_X_FILE_NAME']
        @raw_file.content_type = env['HTTP_X_MIME_TYPE']
        if @raw_file.class.name == 'Unicorn::TeeInput'
          @raw_file = Paperclip::StringioAdapter.new(@raw_file)
        end
      end
    end
  end


  index do
    selectable_column
    column :title do |image|
      link_to image.attachment_file_name, admin_<%= name.underscore%>_path(image)
    end

    column :preview do |image|
      image_tag image.attachment.url(:thumb)
    end
  end

  show do
    attributes_table do
      row :title do |image|
        image.attachment_file_name
      end
      row :preview do |image|
        image_tag image.attachment.url(:original)
      end
    end
  end




  form partial: 'add_images'
end