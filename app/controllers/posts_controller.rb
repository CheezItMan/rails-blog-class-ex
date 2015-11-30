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
    # Post.create(post_params[:post])

    @post = Post.new(post_params[:post])
    if @post.save
      redirect_to "/"
    else
      render "new"
      # redirect_to new_post_path
      # The above will take you to a brand new
      # form and won't save the info or errors
    end
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
