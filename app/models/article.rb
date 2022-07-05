class Article < ApplicationRecord
  def like
    self.likes += 1
  end
end
