class IssuesController < ApplicationController
  def index
    @suazo = Issuebook.all
    @books = ManBook.all
    @users = User.all
  end
  def new
  end
  def create
    @suazo = Issuebook.new(bookid: params["book"],
                        userid: params["users"],
                        issue_date_time: params["issue_date"],
                        expected_date_time: params["expected_return_date"],
                        return_date_time: params["return_date"],
                        status: params["status"])

    @suazo.save

    redirect_to "/issues"
  end
  def edit
    @suazo = Issuebook.find(params[:id])
    @books = ManBook.all
    @users = User.all
  end
  def update
    @suazo = Issuebook.find(params[:id])
    @suazo.update(bookid: params["book"],
                  userid: params["users"],
                  issue_date_time: params["issue_date"],
                  expected_date_time: params["expected_return_date"],
                  return_date_time: params["return_date"],
                  status: params["status"])

    redirect_to "/issues"
  end
  def destroy
    @suazo = Issuebook.find(params[:id])
    @suazo.destroy
    redirect_to "/issues"
  end
end
