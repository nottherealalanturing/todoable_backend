class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @user = current_user.id
    #  @users = User.all
  end

  def show
    @user = current_user.id
    @doctors = Doctor.all
  end
end