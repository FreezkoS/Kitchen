class ResultsController < ApplicationController
  def index
      
      @search = Post.search_everywhere(params[:v1])
  end
end
