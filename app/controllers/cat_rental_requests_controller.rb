class CatRentalRequestsController < ApplicationController

  def index
    render text: "Welcome to the Cat Rental Company"
  end

  def new
    @cats = Cat.all
    render :new
  end
end
