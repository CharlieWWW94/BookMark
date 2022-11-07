class UserController < ApplicationController
    before_action :authenticate_user!
    def index;end
    def show
        @user = User.includes(:lists).find(params[:id])
        # Creates favourites list for user when logging in
        if @user.lists.length == 0
            redirect_to new_list_path
        end
    end
end