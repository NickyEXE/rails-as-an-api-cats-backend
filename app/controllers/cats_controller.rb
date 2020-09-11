class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render json: @cats
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    render json: {message: "You did it, Brittany and friends!"}
  end

end
