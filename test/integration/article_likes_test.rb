require "test_helper"

class ArticleLikesTest < ActionDispatch::IntegrationTest
  test "should add likes to article" do
    article = articles(:one)
    likes = article.likes

    post article_likes_path(article)

    assert_equal likes + 1, article.reload.likes
  end
end
