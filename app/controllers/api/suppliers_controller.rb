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
      name: "Q'Arl Q'Orsendell",
      email: "qarl@waterdeep.net",
      phone: "555-0443"
      )
    @supplier.save
    render 'show.json.jbuilder'
  end

end
