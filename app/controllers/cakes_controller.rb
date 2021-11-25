class CakesController < ApplicationController
  def index
    @cakes = Cake.all
  end

  def new
    @cake = Cake.new
  end
  
  def show
    @cake = Cake.find_by(id:params[:id])
  end

  def create
    @cake = Cake.new(cake_params)
    if @cake.save
      redirect_to cakes_path
    else
      render :new
    end  
  end

  def edit
    @cake = Cake.find_by(id:params[:id])
  end

  def update
    @cake = Cake.find_by(id:params[:id])
    if @cake.update(cake_params)
      redirect_to cakes_path
    else
      render :edit
    end  
  end

  def destroy
    @cake = Cake.find_by(id:params[:id])
    @cake.destroy

    redirect_to cakes_path
  end

  private
  def cake_params
    params.require(:cake).permit(:name, :price, :intro)
  end
end
