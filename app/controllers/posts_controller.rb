class PostsController < ApplicationController
  def index
    @posts = ["hello", "whatsup", "its noon", "goodbye"]
  end

  def show
  end
end
