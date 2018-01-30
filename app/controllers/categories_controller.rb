class CategoriesController < ApplicationController
    before_action :set_category, only: :show

    def show
#        @posts = Post.where(category_id: [@category.subtree_ids]).paginate(page: params[:page], per_page: 4)
        @posts = Post.where("category_id = #{params[:id]}").page params[:page]
    end
    
    private
    
    def set_category
        @category = Category.find(params[:id])
    end

end