class PostsController < ApplicationController
  def index
    @favorite = current_user[:favorite_post]
    @posts = Post.by_author("Charles")
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
