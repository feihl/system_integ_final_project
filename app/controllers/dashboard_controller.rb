class DashboardController < ApplicationController
  def index
    @suazo = Book.all
  end
end
