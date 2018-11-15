class UserController < ApplicationController
  def create
    user = User.create(user_params)
    if user
      render json: { token: issue_token({ id: user.id}), email: user.email }
    else
      render json: { error: "Naaaah mate"}
    end
  end

  def login
    user = User.find_by(username: user_params[:username])
    if user && user.authenticate(user_params[:password])
      render json: { token: issue_token({ id: user.id }), email: email.id}
    else
      render json: { error: 'Cannot find or authenticate user.' }
    end
  end

  def get_current_user
    if current_user
      render json: { username: current_user.username, id: current_user.id }
    else
      render json: { error: 'no user' }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password_digest)
  end
end
