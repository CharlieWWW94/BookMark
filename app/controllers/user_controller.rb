class UserController < ApplicationController
    before_action :authenticate_user!
    def index;end
    def show
        # Eager loads reading lists and associated books
        @user = User.includes(lists: [book_lists: :book]).find(params[:id])
        # Creates favourites list for user when signing up
        if @user.lists.length == 0
            redirect_to new_list_path
        end
    end
end