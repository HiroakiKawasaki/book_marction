class Plan < ApplicationRecord
  belongs_to :books
  belongs_to_active_hash :achivement
end
