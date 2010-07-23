class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
    render 'edit'
  end
  
  def edit
    @article = Article.find(params[:id])
    render 'edit'
  end
  
  def create
    attrs = params[:article]
    @article = Article.create!(:title => attrs[:title], :url => attrs[:url], :author => attrs[:author])
    redirect_to(articles_path)
  end
  
  def update
    attrs = params[:article]
    @article = Article.find(params[:id])
    @article.update_attributes(:title => attrs[:title], :url => attrs[:url], :author => attrs[:author])
    redirect_to(articles_path)
  end
end
