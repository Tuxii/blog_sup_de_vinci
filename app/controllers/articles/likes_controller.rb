class Articles::LikesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])

    @article.likes += 1

    @article.save

    redirect_to @article
  end
end
