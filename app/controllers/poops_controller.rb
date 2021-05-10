class PoopsController < ApplicationController
  
  def index
    @posts = Post.all
    @poops = Poop.all
    @poop = Poop.new
  end

  def create
    Poop.create(poop_params)
  end

  def edit
    @poop = Poop.find(params[:id])
  end

  def update
    @poop = Poop.find(params[:id])
    @poop.update(poop_params)
  end

  private

  def poop_params
    params.require(:poop).permit(:start_time, :text, :color_id, :amount_id, :shape_id, :smell_id).merge(user_id: current_user.id)
  end
end
