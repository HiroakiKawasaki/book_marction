class BookPlan
  include ActiveModel::Model
  attr_accessor :title, :genre_id, :explanation, :user_id, :reason, :time, :place, :partner, :thing, :todo, :achievement_id

  with_options presence: true do
    validates :title
    validates :genre_id
    validates :explanation
    validates :reason
    validates :thing
    validates :todo
  end

  validates :genre_id, numericality: { greater_than: 0 }

  def save
    book = Book.create(title: title, genre_id: genre_id, explanation: explanation, user_id: user_id)
    Plan.create(reason: reason, time: time, place: place, partner: partner, thing: thing, todo: todo, achievement_id: achievement_id, book_id: book.id)
  end
end
