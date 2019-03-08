class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id:product_id)
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    if @product.save
      # if user enters correct data save to db
      render 'show.json.jbuilder'
    else
    #   # if user does not enter correct data do not save and inform user
    # end
      render 'errors.json.jbuilder'
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name =params[:input_name] || @product.name
    @product.price = params[:input_price] || @product.price
    @product.image_url = params[:input_image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id:product_id)
    @product.destroy
    render 'destroy.json.jbuilder'
  end 
end
