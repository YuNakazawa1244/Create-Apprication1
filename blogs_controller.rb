class BlogsController < ApplicationController
  def show
  end

  def index
    @blogs=Blog.all
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path

  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog　=　Blog.find(params[:id])
  end

  def update
    blog=Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end

  private
  def blog_params
    params.require(:blog).permit(:title,:category,:body)
  end

end
