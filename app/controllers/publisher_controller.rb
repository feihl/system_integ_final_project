class PublisherController < ApplicationController
  def index
    @suazo = Publisher.all
  end

  def create
    @suazo = Publisher.new(name: params["name"],
                      status: params["status"])
    @suazo.save

    redirect_to "/publisher"
  end
  def edit
    @suazo = Publisher.find(params[:id])
  end
  def update
    @suazo = Publisher.find(params[:id])
    @suazo.update(name: params["name"], status: params["status"])
    redirect_to "/publisher"
  end
  def destroy
    @suazo = Publisher.find(params[:id])
    @suazo.destroy
    redirect_to "/publisher"
  end
end
