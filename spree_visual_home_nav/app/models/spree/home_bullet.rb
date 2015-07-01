module Spree
  class HomeBullet < SpreeBase #ActiveRecord::Base # SpreeBase
    belongs_to :taxon
    belongs_to :home_main_menu
  end
end