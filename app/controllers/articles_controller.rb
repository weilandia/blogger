class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    new_article
    @article.title = params[:article][:title]
    @article.body = params[:article][:body]
    @article.save

    redirect_to article_path(@article.id)
  end

  def new
    new_article
  end
  
  def edit
  end

  def show
    @article = find_article
  end

  def update
  end

  def destroy
  end


  private

  def find_article
    @article = Article.find(params[:id])
  end

  def new_article
    @article = Article.new
  end
end
