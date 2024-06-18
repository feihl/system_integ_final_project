class RegController < ApplicationController
  def index
    @suazo = Admin.all
  end
  def new
  end
  def reg
    @suazo = Admin.new(first_name: params["fname"],
                      middle_name: params["mname"],
                      last_name: params["lname"],
                      email: params["email"],
                      password: params["password"])
    @suazo.save

    redirect_to "/register"
  end
end
