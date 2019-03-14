class ArticlesController < ApplicationController

  before_action :set_params, only: [:edit, :update, :destroy, :show]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to @article
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def show
  end

  def index
    @articles = Article.all
  end

  def set_params
    @article = Article.find(params[:id])
  end

  private

    def article_params
      params.require(:article).permit(:title, :body)
    end

end
