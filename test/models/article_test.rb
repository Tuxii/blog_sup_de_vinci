require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should have a title" do
    article = articles(:one)
    assert article.valid?

    article.title = nil
    assert_not article.valid?
  end

  test "should not have a title exceeding 80 characters" do
    article = articles(:one)
    assert article.valid?

    article.title = "a"*81
    assert_not article.valid?
  end

  test "should have a content" do
    article = articles(:one)
    assert article.valid?

    article.content = nil
    assert_not article.valid?
  end

  test "should have a positive likes count" do
    article = articles(:one)
    assert article.valid?

    article.likes = -1
    assert_not article.valid?
  end
end
