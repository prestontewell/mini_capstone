class Supplier < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true, uniqueness: true



  # def products
  #   Product.where(supplier_id: id)
  # end
end
