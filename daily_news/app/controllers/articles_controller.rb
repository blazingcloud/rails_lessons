class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    render :edit
  end

  def edit
    @article = Article.find(params[:id])
  end
end
