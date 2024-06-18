class UsersController < ApplicationController
  def index
    @suazo = User.all
  end
  def new
  end
  def create
    @suazo = User.new(first_name: params["fname"],
                      middle_name: params["mname"],
                      last_name: params["lname"],
                      email: params["email"],
                      role: params["role"])
    @suazo.save

    redirect_to "/users"
  end
  def edit
    @suazo = User.find(params[:id])
  end
  def update
    @suazo = User.find(params[:id])
    @suazo.update(first_name: params["fname"],
                  middle_name: params["mname"],
                  last_name: params["lname"],
                  email: params["email"],
                  role: params["role"])
    redirect_to "/users"
  end
  def destroy
    @suazo = User.find(params[:id])
    @suazo.destroy
    redirect_to "/users"
  end
end
