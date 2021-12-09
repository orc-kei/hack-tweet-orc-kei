class HacksController < ApplicationController
  before_action :set_hack, except: [:index, :new, :create]
  before_action :authenticate_user! , except: [:index, :show]
  before_action :move_to_index, only: [:update, :edit, :destroy]

  def index
    @hacks = Hack.all
  end

  def new 
    @hack = Hack.new
  end

  def create
    @hack = Hack.new(hack_params)

    if @hack.save
      redirect_to root_path(@hack)
    else
      render :new
    end
  end

  def show
    @hack = Hack.find(params[:id])
    @comment = Comment.new
    @comments = @hack.comments.includes(:user)
  end

  def edit
    @hack = Hack.find(params[:id])
  end

  def update
    @hack = Hack.find(params[:id])
    if @hack.update(hack_params)
      redirect_to hack_path
    else
      render :edit
  end
end

  def destroy
    @hack = Hack.find(params[:id])
    if @hack.delete
      redirect_to root_path
  end
end

  private
  def hack_params
    params.require(:hack).permit(:image, :title, :catch_copy, :concept).merge(user_id: current_user.id)
  end

  def set_hack
    @hack = Hack.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless current_user == @hack.user
  end
end
