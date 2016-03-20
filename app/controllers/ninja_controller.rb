class NinjaController < ApplicationController
 before_action :move_to_index, except: :index
  def index
    @kakuremis =Syuriken.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  
  end

  def new

  end

  

  def create
    Syuriken.create(image:ninja_params[:image],content:ninja_params[:content],text:ninja_params[:text],user_id: current_user.id)
  end
  
  def destroy
    ninja = Syuriken.find(params[:id])
    if ninja.user_id == current_user.id
    ninja.destroy
    end
  end

  def edit
    @ninja = Syuriken.find(params[:id])
end

  def update
    ninja = Syuriken.find(params[:id])
    if ninja.user_id == current_user.id
      ninja.update(ninja_params)
    end
  end

   def show
    @kakuremi = Syuriken.find(params[:id])
    @comments = @kakuremi.comments.includes(:user)
  end
  private
  def ninja_params
    params.permit(:image,:content,:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
