class CatgController < ApplicationController
  def index
    @categories = Catg.all
  end
  def new
  end
  def create
    @suazo = Catg.new(name: params["name"],
                      status: params["status"])
    @suazo.save

    redirect_to "/category"
  end
  def edit
    @suazo = Catg.find(params[:id])
  end
  def update
    @suazo = Catg.find(params[:id])
    @suazo.update(name: params["name"], status: params["status"])
    redirect_to "/category"
  end
  def destroy
    @suazo = Catg.find(params[:id])
    @suazo.destroy
    redirect_to "/category"
  end
end
