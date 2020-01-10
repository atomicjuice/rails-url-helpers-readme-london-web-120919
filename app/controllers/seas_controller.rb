class SeasController < ApplicationController
  
  def welcome

  end
  
  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
    # redirect_to 'show'
  end

  def create
    sea = Sea.new(new_sea_info)
    # byebug
    redirect_to 'index'
  
  end

  def show

  end


  private 

  def new_sea_info
    params.require(:sea).permit(:name, :temperature, :bio, :image_url, :mood, :favorite_color, :scariest_creature, :has_mermaids)
  end


end
