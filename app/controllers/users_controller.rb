class UsersController < ApplicationController
    
    def create
    	@user = User.new
        @user.title=params[:user]
        @user.video = params[:video]

        if @user.save
        render :json => 'posted'
        else
        render :json => 'not posted'
        end
    end

    def index
        @users=User.all
    end

    def home
    end

end
