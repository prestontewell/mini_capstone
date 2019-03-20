class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true

  has_many :users
  has_many :products
  has_many :orders
end
