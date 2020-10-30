class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :users
  has_one :plans
  has_many :comments
  belongs_to_active_hash :genre

end
