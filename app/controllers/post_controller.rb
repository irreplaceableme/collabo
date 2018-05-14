class PostController < ApplicationController
    def index
    end
    def new
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        
        redirect_to '/'
    end
end
