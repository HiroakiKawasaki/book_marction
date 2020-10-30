class Book < ApplicationRecord
  belongs_to :users
  has_one :plans
  has_many :comments

  with_options presence: true do
    validates :tytle
    validates :genre_id
    validates :explanation
  end

  validates :genre_id, numericality: { greater_than: 0 } do
end
