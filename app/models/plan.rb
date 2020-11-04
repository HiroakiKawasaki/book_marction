class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :books, optional: true 
  belongs_to_active_hash :achievement
end
