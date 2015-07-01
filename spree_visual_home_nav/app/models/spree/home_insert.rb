module Spree
  class HomeInsert < Spree::Base
    has_attached_file :attachment,
                      styles: { mini: '48x19>', small: '100x40>', product: '240x96>', large: '600x240>', original: '530x212>' },
                      default_style: :product,
                      url: '/spree/home/:id/:style/:basename.:extension',
                      path: ':rails_root/public/spree/home/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :attachment,
      :presence => true,
      :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

    validates :title, presence: true
  end
end