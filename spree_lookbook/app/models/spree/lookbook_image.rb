module Spree
  class LookbookImage < Spree::Base
    belongs_to :lookbook

     has_attached_file :picture,
                       styles: { mini: 'x28>', small: 'x58>', product: 'x139>', large: 'x348>', xl: 'x661>' },
                       default_style: :looks,
                       url: '/spree/lookbook/:id/:style/:basename.:extension',
                       path: ':rails_root/public/spree/lookbook/:id/:style/:basename.:extension',
                       convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :picture,
       presence: true,
       :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

    validates_attachment_presence :picture
    validate :no_attachment_errors


    after_post_process :find_dimensions

    # default_scope order: {order(position: :asc)}

    def mini_url
      attachment.url(:mini, false)
    end

    def find_dimensions
      temporary = attachment.queued_for_write[:original]
      filename = temporary.path unless temporary.nil?
      filename = attachment.path if filename.blank?
      geometry = Paperclip::Geometry.from_file(filename)
      self.attachment_width  = geometry.width
      self.attachment_height = geometry.height
    end

    # if there are errors from the plugin, then add a more meaningful message
    def no_attachment_errors
      unless attachment.errors.empty?
        # uncomment this to get rid of the less-than-useful interim messages
        # errors.clear
        errors.add :picture, "Paperclip returned errors for file '#{attachment_file_name}' - check ImageMagick installation or image source file."
        false
      end
    end
  end
end