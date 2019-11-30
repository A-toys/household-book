class CostsController < ApplicationController

  def index
    @cost = Cost.new
  end

  def create
    Cost.create(cost_params)
    redirect_to root_path
  end


  private

  def cost_params
    params.require(:cost).permit(:category, :price, :content, :date).merge(user_id: current_user.id)
  end

end
