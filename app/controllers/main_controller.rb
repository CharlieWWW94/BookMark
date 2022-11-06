require "#{Rails.root}/lib/BookGetter.rb"

class MainController < ApplicationController
  def index
    if params[:searchTerm]
      foundBooks = BookGetter.new(params[:searchTerm])
      @booksDisplay = foundBooks.res
    end
    @currentURL = root_path
  end
end
