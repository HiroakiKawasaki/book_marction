class Plan < ApplicationRecord
  belongs_to :books

  with_options presence: true do
    validates :reason
    validates :what
    validates :how
  end
end