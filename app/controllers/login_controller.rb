class LoginController < ApplicationController
  def index
  end
  def login
    @suazo = Tadmin.find_by(id: params["id"],
                          email: params["email"],
                          password: params["password"])
    if @suazo
      redirect_to "/dashboard"
    else
      redirect_to "/register"
    end
  end
end
