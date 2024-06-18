class RackController < ApplicationController
  def index
    @suazo = Cabrack.all
  end
  def create
    @suazo = Cabrack.new(name: params["name"],
                      status: params["status"])
    @suazo.save
    redirect_to "/rack"
  end
  def edit
    @suazo = Cabrack.find(params[:id])
  end
  def update
    @suazo = Cabrack.find(params[:id])
    @suazo.update(name: params["name"], status: params["status"])
    redirect_to "/rack"
  end
  def destroy
    @suazo = Cabrack.find(params[:id])
    @suazo.destroy
    redirect_to "/rack"
  end
end
