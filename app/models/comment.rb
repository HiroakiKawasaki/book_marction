class Comment < ApplicationRecord

  belongs_to :users
  belongs_to :books

  validates :message, presence: true
end
