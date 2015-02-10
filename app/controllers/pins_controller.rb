class PinsController < ApplicationController

  before_action :authenticate_user!

  def index
    @pins = @current_user.pins.page(params[:page])
    #@pins = Pin.where(user_id: session[:user_id]).all # only pins for vitaly (or the current_user)
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new params.require(:pin).permit(:photo, :url)
    @pin.user = @current_user
    if @pin.save
      redirect_to root_path, notice: "COOL BRO"
    else
      render :new
    end
  end

  def authenticate_user!

    if signed_in?
      @current_user = User.find session[:user_id]
    else
      redirect_to sign_in_path
    end

  end

  def signed_in?
    if session[:user_id].to_i > 0
      return true
    else
      return false
    end
  end
end
