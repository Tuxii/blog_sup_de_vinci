class Article < ApplicationRecord
  validates :title, presence: { message: "Doit être rempli"}, length: { maximum: 80 }
  validates :content, presence: true
  validates :likes, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
