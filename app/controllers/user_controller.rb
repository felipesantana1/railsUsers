class UserController < ApplicationController
  def users
    @users = User.all
  end

  def new
    render "new.html.erb"
  end

  def view
    @user = User.find(params[:id])
    render json: @user
  end

  def edit
    @user = User.find(params[:id])
    render 'edit.html.erb'
  end

  def create
    User.create(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], age:params[:age])
    redirect_to '/'
  end

  def update
    user = User.find(params[:id])
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.age = params[:age]
    user.save
    redirect_to '/'
  end

  def count
    @count = User.all.count
    render text: @count
  end

end
