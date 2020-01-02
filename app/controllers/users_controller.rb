class UsersController < ApplicationController

  def show
    @costs = current_user.costs.order("date DESC")
    @total_fee = @costs.sum(:price)
    render layout: 'show'
  end
end
