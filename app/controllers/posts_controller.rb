class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    id = params[:id]
    @post = Post.find(id)
  end

  def edit
    redirect_to "http://google.com/"
    #render :edit_form
  end
end
