class UsersController < ApplicationController


    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
            @user = User.find(params[:id])
            if @user != current_user
                redirect_to '/', alert: "You do not have access to this page."
            end
    end

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end 
end
