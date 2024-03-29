class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :is_user_logged_in?

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    #complete this method
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    #complete this method
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    #complete this method
  end
  def is_user_logged_in?
    #aqui va la maia de verificar que siempre este conectado, esto se realiza, verificando que la session siga activa y se igual a la id del usuario
    #if session_controller.find(@user.id)
    #  no pasa nada
    #else
    #  flash notice "Not authorized"
    #redirect to home
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if User.find(params[:id])#no sirve esta fuuncion
        #mandar error
        @user = User.find(params[:id])

      else
        redirect_to root_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :last_name, :email, :password, :phone)
    end
end
