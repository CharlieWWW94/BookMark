class UserController < ApplicationController
    before_action :authenticate_user!
    def index;end
    def show
        @user = User.includes(:lists).find(params[:id])
    end
end