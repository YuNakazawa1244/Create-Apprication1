class BlogsController < ApplicationController
  def show
<<<<<<< HEAD
=======
    @blog = Blog.find(params[:id])
>>>>>>> origin/master
  end

  def index
    @blogs=Blog.all
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
<<<<<<< HEAD
    redirect_to blogs_path

=======
    redirect_to blog_path(blog.id)
>>>>>>> origin/master
  end

  def new
    @blog = Blog.new
  end

  def edit
<<<<<<< HEAD
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
=======
>>>>>>> origin/master
  end

  private
  def blog_params
    params.require(:blog).permit(:title,:category,:body)
  end

end
<<<<<<< HEAD
=======

###コミット名変更のため再度push###
>>>>>>> origin/master
