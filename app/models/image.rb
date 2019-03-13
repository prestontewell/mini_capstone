class Image < ApplicationRecord
  belongs_to :product

  validates :url, presence: true
  validates :product_id, presence: true  

end
