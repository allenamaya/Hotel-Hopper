class SessionsController < ApplicationController

    def create 
        customer = Customer.find_by(email: params[:email])
        admin = Admin.find_by(email: params[:email])

        if customer&.authenticate(params[:password])
            session[:customer_id] = customer.id
            render json: customer, status: :ok
        elsif admin&.authenticate(params[:password])
            session[:admin_id] = admin.id
            render json: admin, status: :ok 
        else
            render json: {error: "Not found"}, status: :unauthorized
        end
    end

    def destroy 
        if session.include? :customer_id
            session.delete :customer_id
            render json: {success: "Session deleted"}
        elsif session.include? :admin_id
            session.delete :admin_id
            head :no_content
        else  
            render json: {error: "Not authorized"}
        end
    end
end
