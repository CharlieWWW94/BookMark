class ListsController < ApplicationController

    def new
        newList = List.new
        newList.title = "Favourites"
        newList.desc = "A collection of books you have added as favourites"
        newList.user_id = current_user.id
        newList.save()
        # Below command ensures that dash updates with new reading lists upon save
        redirect_to user_path(current_user.id)
    end

    def create
        newList = List.new
        newList.title = params["title"]
        newList.desc = params["desc"]
        newList.user_id = current_user.id
        newList.save()
        # Below command ensures that dash updates with new reading lists upon save
        redirect_to user_path(current_user.id)
    end
end