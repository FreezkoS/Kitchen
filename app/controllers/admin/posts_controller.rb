class Admin::PostsController < Admin::AdminController
    before_action :set_post, only: [ :edit, :update, :destroy ]
    
    def new
        @post = Post.new(params[:post])
    end
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post, success: 'Объект создан'
        else
            flash.now[:danger] = 'Объект не создан'
            render :new
        end
    end
    
    def edit
    end
    
    def update
        if @post.update_attributes(post_params)
            redirect_to @post, success: 'Объект обновлен'
        else
            flash.now[:danger] = 'Объект не обновлен'
            render :edit
        end
    end
    
    def destroy
        @post.destroy
        redirect_to posts_path, success: 'Объект удален'
    end
    
    private
    
    def set_post
        @post = Post.find(params[:id])
    end
    
    def post_params
        params.require(:post).permit(:title, :summary, :body, :image, :image1, :image2, :image3, :category_id, :all_tags)
    end
end
