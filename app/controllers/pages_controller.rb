class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @articles = Article.all
    @last_article = Article.last
  end
end
