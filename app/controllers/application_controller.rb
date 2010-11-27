class ApplicationController < ActionController::Base
  protect_from_forgery
  
    def session_cart
        if session[:cart].nil?
            @cart = []
        else
            @cart = session[:cart]
        end
    end
    
    def add_to_cart(product)
        @cart << product
        session[:cart] = @cart
    end
end
