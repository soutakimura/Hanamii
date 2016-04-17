class NinjaController < ApplicationController
 before_action :move_to_index, :except=>["index","content"]
  def index
    @kakuremis =Syuriken.includes(:user).page(params[:page]).per(10).order("created_at DESC")
   
  end

  def new

  end
def content
    @ninja = Syuriken.find(params[:id])
    
  end
  

  def create
    Syuriken.create(image:ninja_params[:image],content:ninja_params[:content],image2:ninja_params[:image2],content2:ninja_params[:content2],image3:ninja_params[:image3],content3:ninja_params[:content3],text:ninja_params[:text],user_id: current_user.id,genre:ninja_params[:genre],prefecture:ninja_params[:prefecture],quotation:ninja_params[:quotation])
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
def content
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
    params.permit(:image,:content,:text,:image2,:image3,:content2,:content3,:genre,:prefecture,:quotation)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  
    


end
