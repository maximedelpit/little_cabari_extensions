module Spree
  module Admin
    class HomeInsertsController < Spree::Admin::ResourceController # Admin::BaseController #Spree::Admin::ResourceController
      before_action :find_home_insert, only: [:edit, :update, :destroy]

      def index
        @home_inserts = HomeInsert.where(active: true)
      end

      def new
        @home_insert= HomeInsert.new
      end

      def create
        @home_insert= HomeInsert.new(home_insert_params)
        if @home_insert.save
          redirect_to admin_home, notice: 'Successfully created.'
        else
          render :new
        end
      end

      def edit
      end

      def update
        @home_insert.update(home_insert_params)
        if @home_insert.save
          redirect_to admin_home, notice: 'Successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @home_insert.delete
      end

      private

      def find_insert
        @home_insert = HomeInsert.find(params[:id])
      end

      def home_insert_params
        params.require(:home_insert).permit(:title, :meta_title, :meta_description,
                                            :meta_keywords, :alternative_text, :active)
      end
    end
  end
 end
