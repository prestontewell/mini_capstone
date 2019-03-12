class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :name, uniqueness: true
  validates :description, length: {in: 10..500}
  validates :price, numericality: {greater_than: 0 }
end

def supplier
  Supplier.find_by(id: supplier_id)
end
