FactoryBot.define do
  factory :user do
    nickname              {'書きくけ子'}
    email                 {'abc@gmail.com'}
    password              {'abc123'}
    password_confirmation {password}
    family_name           {'書き'}
    first_name            {'くけ子'}
    family_name_kana      {'カキ'}
    first_name_kana       {'クケコ'}
    birthday              {'1930-01-01'}
    sex_id                {'1'}
  end
end
