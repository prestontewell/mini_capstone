class Api::CartedProductsController < ApplicationController

  def create
    @carted_products = CartedProduct.new(
      user_id: 1,
      product_id: 7,
      quantity: 3,
      status: "carted", 
      order_id: nil
    )
    @carted_products.save
    render 'show.json.jbuilder'
  end
end
    
