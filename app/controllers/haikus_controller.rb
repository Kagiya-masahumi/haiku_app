class HaikusController < ApplicationController

  def index
    @haikus = Haiku.includes(:user)
    @haiku = Haiku.new
  end

  def create
    @haiku = Haiku.new(haiku_params)
    if @haiku.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def haiku_params
    if params[:haiku][:user_id].nil?
      params.require(:haiku).permit(:kami, :shimo, :naka, :season_id)
    else
      params.require(:haiku).permit(:kami, :shimo, :naka, :season_id).merge(user_id: current_user.id)
    end
  end

end 