class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @blogs = Blog.all
    respond_with(@blogs)
  end

  def show
    respond_with(@blog)
    @blog_posts = Post.all
    @posts = @blog_posts.find_by(params[:id])
  end

  def new
    @blog = Blog.new
    respond_with(@blog)
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    #@blog.user = current_user
    @blog.save
    respond_with(@blog)
  end

  def update
    @blog.update(blog_params)
    respond_with(@blog)
  end

  def destroy
    @blog.destroy
    respond_with(@blog)
  end

  private
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      #params[:blog]
      params.require(:blog).permit(:user_id, :title, :text, :posts_id)
    end
end
