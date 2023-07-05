class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :authourized

  def authourized
    render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id
  end

end
