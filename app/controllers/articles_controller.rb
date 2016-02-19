class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    
    flash.notice = "Article '#{@article.title}' Created!"

    redirect_to article_path(@article.id)
  end

  def new
    @article = Article.new
  end

  def edit
    find_article
  end

  def show
    find_article
  end

  def update
    find_article
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"
    
    redirect_to article_path(@article)
  end

  def destroy
    find_article
    @article.destroy

    flash.notice = "Article '#{@article.title}' Destroyed!"

    redirect_to articles_path
  end
end
