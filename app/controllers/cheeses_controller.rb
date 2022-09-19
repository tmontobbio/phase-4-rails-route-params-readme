class CheesesController < ApplicationController


  #neat way to add conditional logic to URL and use things other than ID
  def index
    if params[:is_best_seller] == "true"
      cheeses = Cheese.where(is_best_seller: true)
    elsif params[:is_best_seller] == "false"
      cheeses = Cheese.where(is_best_seller: false)
    else
      cheeses = Cheese.all
    end
    render json: cheeses
  end

  def show
    cheese = Cheese.find(params[:id])
    render json: cheese
  end

end
