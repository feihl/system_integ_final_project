class BookController < ApplicationController
  def index
    @books = ManBook.all
    @authors = Author.all
    @publishers = Publisher.all
    @categories = Catg.all
    @racks = Cabrack.all
  end
  def new
  end
  def create
    @books = ManBook.new(categoryid: params["category"],
                        authorid: params["author"],
                        rackid: params["rack"],
                        name: params["name"],
                        publisherid: params["publisher"],
                        isbn: params["isbn"],
                        no_of_copy: params["no_of_copy"],
                        status: params["status"])
    @books.save

    redirect_to "/book"
  end
  def edit
    @books = ManBook.find(params[:id])
    @authors = Author.all
    @publishers = Publisher.all
    @categories = Catg.all
    @racks = Cabrack.all
  end
  def update
    @books = ManBook.find(params[:id])
    @books.update(categoryid: params["category"],
                  authorid: params["author"],
                  rackid: params["rack"],
                  name: params["name"],
                  publisherid: params["publisher"],
                  isbn: params["isbn"],
                  no_of_copy: params["no_of_copy"],
                  status: params["status"])

    redirect_to "/book"
  end
  def destroy
    @books = ManBook.find(params[:id])
    @books.destroy
    redirect_to "/book"
  end
end
