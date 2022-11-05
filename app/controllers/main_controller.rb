class MainController < ApplicationController
  def index
  @stinker = User.includes(:lists).find(current_user.id)
  @stinker.lists.each do |listy|
    puts listy.title
  end
  end
end
