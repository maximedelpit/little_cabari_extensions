module Spree
  class BlogElementsController < Spree::StoreController
    def index
      case params[:category]
        when Spree.t(:blog) then @blog_elements = BlogElement.where(category: "Blog")
        when Spree.t(:press) then @blog_elements = BlogElement.where(category: "Press")
        when Spree.t(:drawings) then @blog_elements = BlogElement.where(category: "Drawings")
      end
    end

    def show
      @blog_element = BlogElement.find(params[:id])
    end
  end
end
