class UsersController < ApplicationController
    wrap_parameters format: []
    skip_before_action :authourized, only: :create
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found
    
    def show
        user = User.find(session[:user_id])
        render json: user, status: :ok
    end

    def create
        user = User.create!(user_params)
        if user.valid?
        render json: user, status: :created
        else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def render_user_not_found
        render json: {error: "User not found"}, status: :not_found
    end

    def user_params
        params.permit(:username, :password, :password_confirmation, :email, :in_mailing_list, :terms_and_services)
    end
end
