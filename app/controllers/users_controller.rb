class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    @user.save!
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:name,
                                 :hashed_password,
                                 :date_of_birth,
                                 :phone_number,
                                 :main_trait_ids,
                                 :secondary_trait_ids,
                                 :gender,
                                 :summary)
  end
end
