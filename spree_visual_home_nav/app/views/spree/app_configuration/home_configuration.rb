module Home
  class Admin::HomeConfiguration < Spree::Preferences::Configuration
    preference :home_inserts_per_page, :float, :default => 20
    preference :home_main_menus_per_page, :float, :default => 20
  end
end