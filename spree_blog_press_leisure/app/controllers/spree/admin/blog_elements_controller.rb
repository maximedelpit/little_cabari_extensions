module Spree
  module Admin
    class BlogElementsController < Spree::Admin::ResourceController # Admin::BaseController #Spree::Admin::ResourceController
      before_action :find_blog_element, except: [:index, :new, :create]
      def index
        @blog_articles = BlogElement.where(category: "Blog")
        @drawings = BlogElement.where(category: "Drawings")
        @press_articles = BlogElement.where(category: "Press")
      end

      def new
        @blog_element = BlogElement.new
      end

      def create
        @blog_element = BlogElement.new(blog_element_params)
        if @blog_element.save
          redirect_to admin_blog_elements_path
        else
          render :new
        end
      end

      def edit
      end

      def update
        @blog_element.update(blog_element_params)
        if @blog_element.save
          redirect_to admin_blog_elements_path
        else
          render :edit
        end
      end

      def destroy
      end

      private

      def find_blog_element
        @blog_element = BlogElement.find(params[:id])
      end

      def blog_element_params
         params.require(:blog_element).permit(:title, :content, :category, :picture, :attachment, :author,
                                              :pemalink, :meta_title, :meta_description, :meta_keywords, :alt)
      end

    end
  end
 end
