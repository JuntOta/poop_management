FactoryBot.define do
  factory :post do
    title          {"テスト相談タイトル"}
    text           {'テスト相談内容'}

    association :user 

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
