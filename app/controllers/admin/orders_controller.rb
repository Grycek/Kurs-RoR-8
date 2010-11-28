class Admin::OrdersController < Admin::AdminController

  def index
    @users = User.all
  end
end
