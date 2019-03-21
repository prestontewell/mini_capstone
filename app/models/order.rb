class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_product
end
