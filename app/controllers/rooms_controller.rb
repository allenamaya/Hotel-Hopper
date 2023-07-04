class RoomsController < ApplicationController
    
    def index 
        render json: Room.all, status: :ok
    end

    def show 
        room = Room.find(params[:id])
        render json: room, serializer: SingleRoomSerializer, status: :ok
    end

    def update 
        room = Room.find(params[:id])
        room.update!(room_params)
        render json: room, status: :ok
    end

    def occupied 
        rooms = Room.where(occupied: true)
        render json: rooms
    end

    def unoccupied 
        rooms = Room.where(occupied: false)
        render json: rooms
    end

    private 
    def room_params 
        params.permit(:customer, :occupied)
    end
end
