class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_article, only: [:show]

  def show
    @article.punch(request)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
