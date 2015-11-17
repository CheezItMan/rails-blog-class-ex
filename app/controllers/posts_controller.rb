class PostsController < ApplicationController
  def index
    # @favorite = current_user[:favorite_post]
    # @posts = Post.by_author("Charles")
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

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params[:post])

    # p = Post.new(param[:post])
    # p.save
    redirect_to "/"
  end

  def most_recent
    @post = Post.most_recent
    render :show
  end

  private

  def post_params
    params.permit(post:[:title, :writer_id])
  end
end
