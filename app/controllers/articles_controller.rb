class ArticlesController < ApplicationController
  def new

  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
end
