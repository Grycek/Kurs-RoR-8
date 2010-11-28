class CartController < ApplicationController
    before_filter :session_cart    
    def show
        @products = @cart
    end
    
    def delete
        @cart.delete_at(params[:product_number].to_i)
        session[:cart] = @cart
        redirect_to cart_path
    end
end
