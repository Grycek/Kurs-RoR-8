class AddOrderIdToOrderItem < ActiveRecord::Migration
  def self.up
    add_column :order_items, :order_id, :integer
  end

  def self.down
    remove_column :order_items, :order_id
  end
end
