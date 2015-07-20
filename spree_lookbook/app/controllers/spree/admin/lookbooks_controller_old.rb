module Spree
  module Admin
    class LookbooksController < Spree::Admin::ResourceController # Admin::BaseController #Spree::Admin::ResourceController
      before_action :load_data, except: [:index, :show]
      before_filter :build_lookbook_products, :only => [:new, :edit]
      before_filter :build_lookbook_images, :only => [:new, :edit]
       def index
        respond_with(@collection) do |format|
          format.html
          format.json { render :json => json_data }
        end
      end

      def show
        session[:return_to] ||= request.referer
        redirect_to( :action => :edit )
      end

      def search
        params[:q].blank? ? [] : @products = Spree::Product.limit(20).search(:name_cont => params[:q]).result
      end


      private

        def build_lookbook_products
          @lookbook_product = @lookbook.lookbook_products.build
        end

        def build_lookbook_images
          @lookbook_images = @lookbook.lookbook_images.build
        end

      protected

        def find_resource
          # Lookbook.find_by_permalink!(params[:id])
          # TO DO CHECK PERMALINKS GENERATION => Check lookbook => lib lookable.rb
          Lookbook.find(params[:id])
        end

        def location_after_save
          spree.edit_admin_lookbook_url(@lookbook)
        end

        def collection
          # return @collection if @collection.present?
          # params[:q] ||= HashWithIndifferentAccess.new
          # params[:q][:s] ||= 'id desc'

          # @collection = super
          # @search = Spree::Lookbook.ransack(params[:q])
          return @collection if @collection.present?
          @search = Spree::Lookbook.ransack(params[:q])
          @collection = @search.result.page(params[:page]).
            per(params[:per_page] || Spree::LookbookConfig[:admin_lookbooks_per_page])

          @collection
        end

        def load_data
          @products = Product.order(:name)
        end

     #  private

     # def find_home_insert
     #    @home_insert = HomeInsert.find(params[:id])
     #  end

     #  def home_insert_params
     #    params.require(:home_insert).permit(:title, :meta_title, :meta_description,
     #                                        :meta_keywords, :alternative_text, :active, :attachment)
     #  end
    end
  end
 end
