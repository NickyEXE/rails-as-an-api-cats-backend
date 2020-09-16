class CatsController < ApplicationController
  before_action :set_cat, only: [:update, :destroy]

  def index
    @cats = Cat.order(:name)
    render json: @cats
  end

  def create
    @cat = Cat.new(cat_purrrams)
    if @cat.save
      render json: @cat
    else
      render json: {errors: @cat.errors.full_messages.to_sentence}, status: 418
    end
  end

  def update
    @cat.add_tip
    render json: @cat
  end

  def destroy
    @cat.destroy
    render json: {message: "You did it, Brittany and friends!"}
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_purrrams
    params.permit(:name, :actor, :description, :image, :team_name)
  end

end
