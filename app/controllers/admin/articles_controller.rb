class Admin::ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to admin_root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to admin_root_path
  end

  def destroy
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :category, :sub_category, :image, :summary, :content)
  end
end
