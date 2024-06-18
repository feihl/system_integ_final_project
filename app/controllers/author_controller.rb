class AuthorController < ApplicationController
  def index
    @suazo = Author.all
  end
  def new
  end
  def create
    @suazo = Author.new(name: params["name"],
                        status: params["status"])
    @suazo.save
    redirect_to "/author"
  end
  def edit
    @suazo = Author.find(params[:id])
  end
  def update
    @suazo = Author.find(params[:id])
    @suazo.update(name: params["name"], status: params["status"])
    redirect_to "/author"
  end
  def destroy
    @suazo = Author.find(params[:id])
    @suazo.destroy
    redirect_to "/author"
  end
end
