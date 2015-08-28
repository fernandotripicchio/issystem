class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @usuarios = User.order("last_name").page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @afiliados }
    end  	
  end	

  def new
  	@user = User.new
  end
  
  def create
  end	
end
