class OrdersController < ApplicationController
    before_filter :session_cart
    before_filter :authenticate_user!
    
    def new
        @order = Order.new
    end
    
    def create
        #@order = Order.create(params[:order])
        @order = current_user.orders.create(params[:order])
        if @order.valid?
            @cart.each do |product|
              @order.order_items.create(:name => product.name, :value => product.value, :product_id => product.id)
            end
            @cart          = []
            session[:cart] = []
            redirect_to orders_path
        else
            render :action => :new
        end
    end
    
    def index
        @orders = Order.where(:user_id => current_user)
    end
end
