class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  include DeviseTokenAuth::Concerns::SetUserByToken

  def signed_user
    render json: { errors: "Realizar login"} unless user_signed_in?
    @user = current_user
  end
end
