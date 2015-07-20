module Spree
  class Lookbook < Spree::Base
    has_many :lookbook_products
    has_many :products, :through => :lookbook_products
    has_many :lookbook_images, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true
    validates :permalink, presence: true, uniqueness: true

    accepts_nested_attributes_for :lookbook_products, :reject_if => lambda { |a| a[:product_id].blank? }, :allow_destroy => true
    accepts_nested_attributes_for :lookbook_images, :reject_if => lambda { |a| a[:attachment].blank? }, :allow_destroy => true
  end
end