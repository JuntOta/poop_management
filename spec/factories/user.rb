FactoryBot.define do
  factory :user do
    email              {Faker::Internet.free_email}
    password           { '1a' + Faker::Internet.password(min_length: 6)}
    nickname           {Faker::Name.initials(number: 2)}
    animal             {'犬'}
    birthday           {'1930-01-01'}
    password_confirmation {password}
  end
end