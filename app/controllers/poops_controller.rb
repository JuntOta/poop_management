class PoopsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def index
    @posts = Post.all
    @poops = Poop.all
    @poop = Poop.new
  end
  
  def new
    @poop = Poop.new
  end

  def create
    @poop = Poop.new(poop_params)
    if @poop.save
      redirect_to poops_path
    else
      render :new
    end
  end

  def show
    @poop = Poop.find(params[:id])
  end

  def edit
    @poop = Poop.find(params[:id])
  end

  def update
    @poop = Poop.find(params[:id])
    if @poop.update(poop_params)
      redirect_to poops_path
    else
      render :edit
    end
  end

  def destroy
    @poop = Poop.find(params[:id])
    @poop.destroy
    redirect_to poops_path
  end

  private

  def poop_params
    params.require(:poop).permit(:start_time, :text, :color_id, :amount_id, :shape_id, :smell_id).merge(user_id: current_user.id)
  end
end
