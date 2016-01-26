class CatsController < ApplicationController



  def index
    @cats = Cat.all
    render :index
  end


  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @new_cat = Cat.new(cat_params)
    if @new_cat.save
      redirect_to cats_url
    else
      render json: @new_cat.errors.full_messages
    end
  end

  def edit
    @cat = Cat.find_by(id: params[:id])

    render :edit
  end

  def update
    @cat = Cat.find_by(id: params[:id])
    @cat.update(cat_params)

    redirect_to cats_url
  end


  private

  def cat_params
    params.require(:cat).permit(:name, :birth_date, :sex, :color, :description)
  end
end
