class ListsController < ApplicationController
    def create
        newList = List.new
        newList.title = params["title"]
        newList.desc = params["desc"]
        newList.user_id = current_user.id
        newList.save()
    end
end