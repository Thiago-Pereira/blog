class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to @post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path,
        notice: "Post was sucessfully created !"
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path,
        notice: "Post was sucessfully update !"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path,
        notice: "Post was sucessfully removed !"
    else
      redirect_to posts_path,
        alert: "Fail to remove post !"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
