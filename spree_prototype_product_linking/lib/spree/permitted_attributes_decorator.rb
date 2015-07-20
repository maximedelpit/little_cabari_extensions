# lib/spree/permitted_attributes_decorator.rb
Spree::PermittedAttributes.class_eval do
  ATTRIBUTES << :prototype_attributes

  @@prototype_attributes = [:main_option_type_id, :secondary_option_type_id]
  @@product_attributes.push(:prototype_id)
end
