FactoryBot.define do
  factory :bank_account do
    association :user
    id { SecureRandom.uuid }
    agency { Faker::Number.number(digits: 5) }
    agency_verifier_digit { Faker::Number.number(digits: 1) }
    account_number { Faker::Number.number(digits: 5) }
    account_verifier_digit { Faker::Number.number(digits: 1) }
    balance { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
    password { BCrypt::Password.create(Faker::Name.name) }
    created_at { Time.now }
    updated_at { Time.now }
  end
end
