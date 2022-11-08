require 'rest-client'
require "#{Rails.root}/lib/BookGetter.rb"


class BooksController < ApplicationController

    
    
    def new
        newBook = Book.new
        newBook.title = params["title"]
        newBook.author = params["author"]
        newBook.published = params["published"].to_i
        newBook.save();
        BookList.create(list_id: params["f_id"].to_i, book_id: newBook.id)
        redirect_to root_path
    end
end