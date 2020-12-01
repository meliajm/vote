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
          render json: @user, status: :created 
              
        else
          render json: @user.errors, status: :unprocessable_entity
        end
    end


    # POST /users
    # def create
    #     @user = User.new(user_params)
    #     if @user.save
    #         render json: @user
    #     else 
    #         render error: { error : 'Unable to make a user.' }, status: 400
    #     end 
    # end

    #???
    # def notifications
    #     @users = User.receivesNotifications
    #     render json: @users
    # end

    private

    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :phonenumber, :receivesNotification, :address1, :address2,
        :city, :zip, :state, :message, :canVolunteer)   
    end
end

# address1,
        # address2,
        # city,
        # zip,
        # state,
        # message,
        # canVolunteer
        # rails generate migration add_columns_to_users address1:string, address2:string, city:string, zip:string, state:string, message:text, canVolunteer:boolean