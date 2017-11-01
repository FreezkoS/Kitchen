class PostsController < ApplicationController
    before_action :set_post, only: :show
    before_action :set_title, only: [:welcom, :index]
    
    def welcom
    end
    
    def index
        @posts = Post.paginate(page: params[:page], per_page: 6)
    end
    
    def show
        session[:name] = @post.title
    end
    
    private
    
    def set_post
        @post = Post.find(params[:id])
    end
    
   
end