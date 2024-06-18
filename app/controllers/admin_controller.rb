class AdminController < ApplicationController
  def index
    @suazo = Tadmin.all
  end
  def new
  end
  def create
    @suazo = Tadmin.new(first_name: params["fname"],
                      middle_name: params["mname"],
                      last_name: params["lname"],
                      email: params["email"],
                      role: params["role"],
                      password: params["password"])
    @suazo.save

    redirect_to "/admin"
  end
  def edit
    @suazo = Tadmin.find(params[:id])
  end
  def update
    @suazo = Tadmin.find(params[:id])
    @suazo.update(first_name: params["fname"],
                  last_name: params["lname"],
                  email: params["email"],
                  role: params["role"],
                  password: params["password"])
    redirect_to "/admin"
  end
  def destroy
    @suazo = Tadmin.find(params[:id])
    @suazo.destroy
    redirect_to "/admin"
  end
end
