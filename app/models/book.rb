class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :users, optional: true
  has_many :comments
  belongs_to_active_hash :genre
  belongs_to_active_hash :achievement

  with_options presence: true do
    validates :title
    validates :author
    validates :genre_id
    validates :explanation
    validates :reason
    validates :thing
    validates :todo
  end

  validates :genre_id, numericality: { greater_than: 0 }
end
