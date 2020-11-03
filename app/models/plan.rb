class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :books
  belongs_to_active_hash :achievement
end
