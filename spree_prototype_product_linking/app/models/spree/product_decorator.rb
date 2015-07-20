Spree::Product.class_eval do
  # attr_accessible :prototype

  belongs_to :prototype, class_name: 'Spree::Prototype'

  validates :prototype_id, presence: :true, on: :create
end