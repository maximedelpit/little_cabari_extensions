module Spree
  Product.class_eval do
    has_many :lookbook_products, dependent: :destroy
    has_many :lookbooks, through: :lookbook_products
  end
end