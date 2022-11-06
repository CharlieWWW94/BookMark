class MainController < ApplicationController
  def index
    #below code proves that user > list associations work.
  # @stinker = User.includes(:lists).find(current_user.id)
  # @stinker.lists.each do |listy|
  #   puts listy.title
  # end
  end
end
