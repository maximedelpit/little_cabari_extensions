module Spree
  module Admin
    class HomeManagementController < Admin::BaseController #Spree::Admin::ResourceController # Admin::BaseController #Spree::Admin::ResourceController

      def index
        @home_inserts = HomeInsert.all
        @home_main_menus = HomeMainMenu.all
      end

      def collection(elements)
        return @collection if @collection.present?
        # params[:q] can be blank upon pagination
        params[:q] = {} if params[:q].blank?
        @collection = super
        @search = @collection.ransack(params[:q])
        @collection = @search.result.
                      page(params[:page]).
                      per(Spree::Config["#{elements}_per_page".to_sym])
        @collection
      end
    end
  end
 end
