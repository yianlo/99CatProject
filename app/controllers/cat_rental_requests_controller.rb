class CatRentalRequestsController < ApplicationController

  def index
    render text: "Welcome to the Cat Rental Company"
  end

  def new
    @cats = Cat.all
    render :new
  end

  def create
    @new_rental = CatRentalRequest.new(cat_rental_request_params)

    if @new_rental.save
      redirect_to cat_rental_requests_url
    else
      render json: @new_rental.errors.full_messages
    end
  end

  private

  def cat_rental_request_params
    params.require(:cat_rental_request).permit(:cat_id, :start_date, :end_date)
  end
end
