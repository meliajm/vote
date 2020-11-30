class Api::V1::UsersController < ApplicationController

    # GET /users
    def index
        @users = User.all
        render json: @users
    end

    # GET /user/:id
    def show
        @user = User.find(params[:id])
        render json: @user
    end


    # POST /users
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else 
            render error: { error : 'Unable to make a user.' }, status: 400
        end 
    end

    #???
    def notifications
        @users = User.receivesNotifications
        render json: @users
    end

    private

    def user_params
        params.require(:user).permit(:firstname, :lastname, :phonenumber, :email, :receivesNotifications)
    end



end
