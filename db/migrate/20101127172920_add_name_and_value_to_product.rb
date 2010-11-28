class AddNameAndValueToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :name, :string
    add_column :products, :value, :float
  end

  def self.down
    remove_column :products, :value
    remove_column :products, :name
  end
end
