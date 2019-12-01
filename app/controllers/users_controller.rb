class UsersController < ApplicationController

  def show
    @costs = current_user.costs.order("date DESC")
  end
end
