class HotelsController < ApplicationController

  def index
    @hotels = current_hotel_owner.hotels
  end

  def new
    @hotel = Hotel.new
  end

   def show
    #byebug
    @hotel= current_hotel_owner.hotels.find(params[:id])
  end
  
  def create
    @hotel = current_hotel_owner.hotels.new(hotel_params)
    #byebug
    if @hotel.save
      redirect_to hotels_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @hotel= Hotel.find(params[:id])
  end
  
  def update
    @hotel= Hotel.find(params[:id])
    if @hotel.update(hotel_params)
      redirect_to hotels_path
    else
      render "edit"
    end
  end  

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    redirect_to hotels_path
  end
   
  private
    def hotel_params
     params.require(:hotel).permit(:name,:contact_no,:email,:address,images: [])
      # room_attributes: [:description,:room_no,:room_size,:hotel_id,:image])
    end
end
