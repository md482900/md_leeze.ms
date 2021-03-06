require 'pry'
class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	def new
		@post = Post.new
#		binding.pry
	end
	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post, notice: 'Success'
	end
	def show
	 	@post = Post.find(params[:id])
	end

	private
		def post_params
			params.require(:post).permit(:title, :text)
		end
end
