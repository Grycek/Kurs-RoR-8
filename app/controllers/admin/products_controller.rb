class Admin::ProductsController < Admin::AdminController
    def index
        @products = Product.all
    end
    
    def new
        @product = Product.new
    end
    
    def create
        @product = Product.create(params[:product])
        if @product.valid?
            redirect_to admin_products_path
        else
            render :action => :new
        end
        
    end
end
