class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :name
      t.string :surname
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end