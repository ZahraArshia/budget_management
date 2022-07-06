class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_user, only: %i[show update destroy]

  # GET /users
  def index
    @users = User.all
  end
end
