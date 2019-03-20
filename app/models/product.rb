class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :carted_product

  validates :name, :price, presence: true
  validates :name, uniqueness: true
  validates :description, length: {in: 10..500}
  validates :price, numericality: {greater_than: 0 }

  def bargain
    price < 5
  end

  def tax
    tax = price * 0.08
  end

  def total
    price + tax
  end

end

