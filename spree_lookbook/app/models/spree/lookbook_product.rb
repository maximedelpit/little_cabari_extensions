module Spree
  class LookbookProduct < Spree::Base
    belongs_to :lookbook
    belongs_to :product, :class_name => Spree::Product

    delegate :product_name, :to => :product
    delegate :look_name, :to => :look

    validates :look_id, :product_id, :presence => true

    def product_name
      product.try(:name)
    end

    def product_name=(name)
      self.product.name ||= name if name.present?
    end
  end
end