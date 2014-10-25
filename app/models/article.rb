class Article < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 20}
  validates :body, presence: true
end
