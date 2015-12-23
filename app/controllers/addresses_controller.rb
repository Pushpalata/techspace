class AddressesController < ApplicationController
  before_filter :set_address, :only => [:my_address, :update, :edit, :show]

  def index
  end
  
  def my_address
  end
  
  def new
    @address = Address.new
  end
  
  def create
    @address = current_user.build_address(address_params)
    if @address.save
      expire_fragment("techspacer")
      redirect_to my_address_path, notice: 'Address was successfully created.' 
    else
      render :new
    end
  end
  
  def update
    if @address.update(address_params)
      expire_fragment("techspacer")
      redirect_to my_address_path, notice: 'Address was successfully updated.' 
    else
      render :edit
    end
  end
  
  def edit
  end
  
  def show
  end
  
  private
  
  def address_params
    params.require(:address).permit(:country_id, :city, :state, :address_line1)
  end
  
  def set_address
    @address = current_user.address
  end
  
end
