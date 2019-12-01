class CostsController < ApplicationController

  def index
    @cost = Cost.new
  end

  def create
    Cost.create(cost_params)
    redirect_to root_path
  end

  def edit
    @cost = Cost.find(params[:id])
  end

  def update
    cost = Cost.find(params[:id])
    cost.update(cost_params)
    redirect_to "/users/#{current_user.id}"
  end

  def destroy
    cost = Cost.find(params[:id])
    cost.destroy
    redirect_to "/users/#{current_user.id}"
  end


  private

  def cost_params
    params.require(:cost).permit(:category, :price, :content, :date).merge(user_id: current_user.id)
  end

end
