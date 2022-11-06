require 'rest-client'
require 'json'

class BookGetter
    attr_accessor :searchTerm, :res
    
    def initialize(searchTerm)
        @searchTerm = searchTerm
        @res = self.makeRequest searchTerm
    end

    def makeRequest searchTerm
                res = RestClient.get "http://openlibrary.org/search.json?title=#{searchTerm}"
                return JSON.parse(res)
    end


end