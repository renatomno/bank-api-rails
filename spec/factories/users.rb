FactoryBot.define do
  factory :user do
    id { SecureRandom.uuid }
    name { Faker::FunnyName.two_word_name }
    cpf { Faker::Number.number(digits: 11) }
    email { Faker::Internet.email(name: name, separators: '_')  }
    birthdate { Faker::Date.between(from: 68.years.ago, to: 18.years.ago) }
    created_at { Time.now }
    updated_at { Time.now }
  end
end
