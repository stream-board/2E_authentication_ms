class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok, root: "data", render_attribute: params[:id] || "all"
  end

end
