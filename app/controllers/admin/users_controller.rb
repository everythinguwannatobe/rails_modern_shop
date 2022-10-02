class Admin::UsersController < ApplicationController
  before_action :authenticate_user!

  layout "admin"

  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
