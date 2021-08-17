class HaikusController < ApplicationController

  def index
    @haikus = Haiku.all
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
    params.require(:haiku).permit(:kami, :naka, :shimo, :season_id)
  end

end 