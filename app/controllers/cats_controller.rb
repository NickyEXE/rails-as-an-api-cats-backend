class CatsController < ApplicationController

  def index
    @cats = Cat.alphabetical
    render json: @cats
  end

  def create
    @cat = Cat.new(cat_purrams)
    if @cat.save
      render json: @cat
    else
      render json: {errors: @cat.errors.full_messages.to_sentence}, status: 500
    end
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.give_ten_dollars
    render json: @cat
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    render json: {message: "You did it, Brittany and friends!"}
  end

  private

  def cat_purrams
    params.permit(:name, :actor, :description, :image, :team_name)
  end

end
