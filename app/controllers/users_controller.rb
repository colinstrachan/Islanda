class UsersController < ApplicationController
  def show
    @islands = current_user.islands
    authorize current_user
  end
end
