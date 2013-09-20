class PostsController < ApplicationController

before_action :user_logged_in, only: %w(secret)

  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def secret
  end
end
