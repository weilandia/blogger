class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
  end

  def new
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
end
