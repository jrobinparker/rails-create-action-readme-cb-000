class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end
	
	def create 
	  post = Post.new 
	  post.id = params[:id]
	  post.title = params[:title]
	  post.description = params[:description]
	  post.save
<<<<<<< HEAD
	  redirect_to posts_path
=======
	  redirect_to post_path(@post)
>>>>>>> f79a7ebcb09a8e7a3982dbe5aa81dd2eca164fb3
	end 
	
end