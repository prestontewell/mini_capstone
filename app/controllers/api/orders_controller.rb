class Api::OrdersController < ApplicationController

  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quanitity: params[:quanitity]

      )
  end

end
