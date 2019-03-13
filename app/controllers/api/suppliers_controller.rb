class Api::SuppliersController < ApplicationController
  
  def index
    @suppliers = Supplier.all
    render 'index.json.jbuilder'
  end

  def show
    @supplier = Supplier.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone: params[:phone]
      )
    if @supplier.save
    render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
  end

  def update
    @supplier = Supplier.find(params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone = params[:phone] || @supplier.phone
    @supplier.save
    render 'show.json.jbuilder'
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    render 'destroy.json.jbuilder'
  end


end
