class Article < ApplicationRecord
  #belongs_to :user
  has_many :comments, dependent: :delete_all
  has_rich_text :content
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
end

