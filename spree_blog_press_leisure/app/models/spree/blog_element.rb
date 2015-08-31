module Spree
  class BlogElement < Spree::Base
   has_attached_file :picture,
                        styles: { square: '300x300>' '100x100>', small: '200x135>', large: '600x405>', original: '1200x810>' },
                        default_style: :original,
                        :default_url => "home/:style/missing.png"
                        # url: '/spree/home/:id/:style/:basename.:extension',
                        # path: ':rails_root/public/spree/home/:id/:style/:basename.:extension',
                        # convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :picture, :presence => true,
        :content_type => { :content_type => /\Aimage\/.*\z/ }

    has_attached_file :attachment
    validates_attachment_content_type :attachment,
                                      content_type: 'application/pdf',
                                      message:      'File must be a pdf file'

    validates :title, presence: true

    CATEGORIES = %w(Blog Press Drawings)
    validates :category, presence: true, inclusion: { in: CATEGORIES, message: "Please select on the list" }
    validate :category_specific_validation


    def category_specific_validation
      case category
        when "Blog" then !content.nil?
        when "Press" then !content.nil?
        when "Drawings" then !attachment.nil?
      end
    end
  end
end