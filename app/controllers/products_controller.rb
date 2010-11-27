class ProductsController < ApplicationController
    before_filter :session_cart
    def index
        @products = Product.all
    end
    
    def index_add_to_cart
        self.add_to_cart(Product.find(params[:id]))
        redirect_to products_path
    end
    
    ###########
end
