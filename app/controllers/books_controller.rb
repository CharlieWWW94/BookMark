require 'rest-client'

class BooksController < ApplicationController

    
    
    def new
        Thread.new do
            # Here the API request occurs on a new thread - this may lead to issues with later functions
            searchTerm = params["searchTerm"]
            res = RestClient.get "http://openlibrary.org/search.json?title=#{searchTerm}"
            puts res;
        end
    end
end