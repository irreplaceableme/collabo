class PostController < ApplicationController
    def index
        @posts = Post.all
    end
    def new
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        
        redirect_to '/'
    end
end
