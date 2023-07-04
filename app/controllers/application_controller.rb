class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    private 

    def render_not_found_response 
        render json: {error: "Not found"}, status: :not_found
    end
end
