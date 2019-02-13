class UserController < ApplicationController

  def index
  end

  def new
  end

  def show
    @user = current_user.id
  end

  def destroy
  end

end
