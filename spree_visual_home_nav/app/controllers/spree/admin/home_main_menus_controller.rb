module Spree
  module Admin
    class HomeMainMenusController < Spree::Admin::ResourceController # Admin::BaseController #Spree::Admin::ResourceController
      before_action :find_home_main_menu, only: [:edit, :update, :destroy]

      def index
        @home_main_menus = HomeMainMenu.where(active: true)
      end

      def new
        @home_main_menu = HomeMainMenu.new
        @home_main_menu.bullets.build
      end

      def create
        @home_main_menu= HomeMainMenu.new(home_main_menu_params)
        if @home_main_menu.save
          redirect_to admin_home, notice: 'Successfully created.'
        else
          render :new
        end
      end

      def edit
      end

      def update
        @home_main_menu.update(home_main_menu_params)
        if @home_main_menu.save
          redirect_to admin_home, notice: 'Successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @home_main_menu.delete
      end

      private

      def find_insert
        @home_main_menu = HomeMainMenu.find(params[:id])
      end

      def home_main_menu_params
        params.require(:home_main_menu).permit(:title, :meta_title, :meta_description,
                                            :meta_keywords, :alternative_text, :active,
                                            bullets_attributes: [ :taxon, :color, :x, :y]
                                        )
      end
    end
  end
 end
