require 'rest-client'
require "#{Rails.root}/lib/BookGetter.rb"


class BooksController < ApplicationController

    
    
    def new
            # Here the API request occurs on a new thread - this may lead to issues with later functions
            searchTerm = params["searchTerm"]
            # $response = RestClient.get "http://openlibrary.org/search.json?title=#{searchTerm}"
            api = BookGetter.new(searchTerm)
            redirect_back fallback_location: root_path
    end

    def get_books
    end
end