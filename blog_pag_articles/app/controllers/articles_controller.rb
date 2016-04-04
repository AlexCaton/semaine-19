class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).per(5)
  end

  def show
    @article = Article.find(params[:id])
		@comments = Comment.where(article_id: @article.cat_id).all
  end

  def create
    	Comment.create author: params[:author], content: params[:content], article_id: params[:article_id]
    	redirect_to "/articles/#{params[:id]}"
  end
end
