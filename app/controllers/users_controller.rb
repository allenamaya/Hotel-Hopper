class UsersController < ApplicationController
    wrap_parameters format: []
    skip_before_action :authourized, only: :create
    
    def show
        user = User.find_by(username: params[:username])
        render json: user, status: :ok
    end

    def create
        user = User.create(user_params)
        if user.valid?
        render json: user, status: :created
        else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :email, :in_mailing_list, :terms_and_services)
    end
end
