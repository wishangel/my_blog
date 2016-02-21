class PostsController < ApplicationController
	
	before_action :authenticate_author!, only: [:new, :create, :edit, :update, :destroy]

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
	end
	def index
		@posts = Post.page(params[:page]).per(10).order(:created_at).reverse_order
		@author = Author.find(4)
		@recently_posts = Post.order(:created_at).limit(5).reverse_order
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to "/my_blogs/#{@post.id}"
	end
	def edit
		@post = Post.find(params[:id])
	end
	def update
		@post = Post.find(params[:id])
		@post.update(params[:id])
		redirect_to "/my_blogs/#{@post.id}"
	end
	def delete
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to my_blogs_url

	end
	private
	def post_params
		params.require(:post).permit(:title,:body,:category)
	end
end
