class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    @blogs = Blog.all
    respond_with(@post)
  end

  def new
    @blogs = Blog.all
    @post = Post.new
    @posts = Post.all
    respond_with(@post)
  end

  def edit
    @blogs = Blog.all
  end

  def create
    @blogs = Blog.all
    @post = Post.new(post_params)
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params[:post]
      params.require(:post).permit(:title, :text, :user_id, :blog_id)
    end
end
