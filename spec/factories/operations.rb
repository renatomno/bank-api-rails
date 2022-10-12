FactoryBot.define do
  factory :operation do
    association :bank_account
    id { SecureRandom.uuid }
    amount { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    type { Operation::OPERATION_TYPE.sample }
    created_at { Time.now }
    updated_at { Time.now }
  end
end
