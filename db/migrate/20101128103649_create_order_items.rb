class CreateOrderItems < ActiveRecord::Migration
  def self.up
    create_table :order_items do |t|
      t.string :name
      t.integer :product_id
      t.column :value, :double

      t.timestamps
    end
  end

  def self.down
    drop_table :order_items
  end
end
