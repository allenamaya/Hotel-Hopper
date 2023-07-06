class CustomersController < ApplicationController
    def index 
        render json: Customer.all, status: :ok
    end

    def show 
        customer = Customer.find(params[:id])
        render json:customer, serializer: SingleCustomerSerializer, status: :ok 
    end

    def create 
       
    end

    def update 
        room = Room.find(params[:room_id])
        customer = Customer.find_by(email: params[:email])
        if room && (room.available > 0)
            Room.decrement_counter(:available, params[:room_id], touch: true)
            customer.update!(customer_params)
            render json:customer, serializer: SingleCustomerSerializer, status: :ok
        else
            render json: {error: "All rooms of this type are taken"}
        end
    end

    def destroy 
        customer = Customer.find(params[:id])
        customer.destroy 
        render json: {success: "deleted"}
    end

    private 
    def render_not_found_response 
        render json: {error: "Customer found"}, status: :not_found
    end

    def customer_params 
        params.permit(:email, :room_id, :date_in, :date_out)
    end
end
