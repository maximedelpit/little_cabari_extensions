# lib/spree/permitted_attributes_decorator.rb
Spree::PermittedAttributes.class_eval do

  ATTRIBUTES << :lookbook_attributes
  class_variable_set(:@@lookbook_attributes, class_variable_get(:@@lookbook_attributes).push(
    :title,
    :season,
    :description,
    :permalink,
    :active,
    # lookbook_image: [:lookbook_id, :picture],
    lookbook_images: [lookbook_image: [:lookbook_id, :picture]],
    lookbook_products: [lookbook_product: [:lookbook_id, :product_id]]
  ))
end


Spree::Api::ApiHelpers.class_eval do
  class_variable_set(:@@product_attributes, class_variable_get(:@@product_attributes).push(:foo_bar))
end