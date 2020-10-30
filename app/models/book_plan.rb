class BookPlan
  include ActiveModel::Model
  attr_accessor :title, :genre_id, :explanation, :user_id, :reason, :time, :place, :partner, :thing, :todo, :achievement_id

  with_options presence: true do
    validates :tytle
    validates :genre_id
    validates :explanation
    validates :reason
    validates :what
    validates :how
  end

  validates :genre_id, numericality: { greater_than: 0 }

  def save
    book = Book.create(title: title, genre_id: genre_id, explanation: explanation, user_id: user_id)
    Delivery.create(reason: reason, time: time, place: place, partner: partner, thing: thing, todo: todo, achievement_id: achievement_id,book_id: book.id)
  end
end