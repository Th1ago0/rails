class PostsController < ApplicationController
    layout "post"
    before_action :set_post, only: %i[show edit update destroy]
    def index
        @posts = Post.all
        render layout: "application"
    end
    
    def show
    end
    
    def new
        @post = Post.new()
    end
    
    def edit
    end
    
    def create
        @post = Post.new(post_params)
        
        if @post.save
            redirect_to "/posts"
        else
            render :new
        end
    end
    
    def update
        if @post.update(post_params)
            redirect "/posts"
        else
            render :edit
        end
    end
    
    def destroy
    end
    
    private
    
    def post_params
        params.require(:post).permit(:title, :content, :publish_at, :author_id, :avatar)
    end
    
    def set_post
        @post = Post.find(params[:id])
    end
end
