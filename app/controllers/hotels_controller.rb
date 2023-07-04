class HotelsController < ApplicationController

    def index 
        render json: Hotel.all, status: :ok
    end

    def show 
        hotel = Hotel.find(params[:id])
        render json: hotel, serializer: SingleHotelSerializer, status: :ok
    end
end
