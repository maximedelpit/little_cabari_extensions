module Spree
  HomeController.class_eval do
   def index
        @home_inserts = HomeInsert.where(active: true)
        @home_main_menus = HomeMainMenu.where(active: true).last # remove put limit one and slider
      end
  end
end