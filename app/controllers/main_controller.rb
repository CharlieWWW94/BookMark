require "#{Rails.root}/lib/BookGetter.rb"

class MainController < ApplicationController
  def index
    if params[:searchTerm]
      foundBooks = BookGetter.new(params[:searchTerm])
      @booksDisplay = foundBooks.res["docs"]
      favourites = List.where("title = ? AND user_id = ?", "Favourites", current_user.id)
      @f_id = favourites[0].id
    end
    @currentURL = root_path
  end
end
