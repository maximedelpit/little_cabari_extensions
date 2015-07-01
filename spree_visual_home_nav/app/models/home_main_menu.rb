class HomeMainMenu < Spree::Base
  has_many :bullets

  has_attached_file :attachment,
                    styles: { mini: '48x28>', small: '100x58>', product: '240x139>', large: '600x348>', original: '1140x661>' },
                    default_style: :product,
                    url: '/spree/home/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/home/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
  validates_attachment :attachment,
    :presence => true,
    :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

  validates :title, presence: true

  accepts_nested_attributes_for :bullets
end
