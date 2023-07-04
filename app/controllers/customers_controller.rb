class CustomersController < ApplicationController
    def index 
        render json: Customer.all, status: :ok
    end

    def show 
        customer = Customer.find(params[:id])
        render json:customer, serializer: SingleCustomerSerializer, status: :ok 
    end

    def create 
        room = Room.find(params[:room_id])
        if room && !room.occupied
            room.update(occupied: true)
            customer = Customer.create(customer_params)
            render json:customer, serializer: SingleCustomerSerializer, status: :created
        else
            render json: {error: "Room taken"}
        end
    end

    private 
    def render_not_found_response 
        render json: {error: "Customer found"}, status: :not_found
    end

    def customer_params 
        params.permit(:name, :room_id)
    end
end
