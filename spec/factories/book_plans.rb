FactoryBot.define do
  factory :book_plan do
    title           { 'これは本です'}
    genre_id        { 1 }
    explanation     { 'これは本です' }
    reason          { '本が読みたい' }
    thing           { '本を読むこと' }
    todo            { '本を読むこと' }
    time            { '朝8:00' }
    place           { '自宅' }
    partner         { '友人' }
    achievement_id  { 1 }  
  end
end
