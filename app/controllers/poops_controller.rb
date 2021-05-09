class PoopsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def create
  end

  def edit
  end
end
