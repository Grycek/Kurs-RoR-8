class Order < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :address
  has_many :order_items
  belongs_to :user
end
