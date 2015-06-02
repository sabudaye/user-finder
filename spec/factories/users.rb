FactoryGirl.define do
  factory :user do
    gender { [1, 0].sample }
    age { rand(100) }
    height { rand(300) }
    index { rand(1_000_000) }
    amount { rand(1_000_000) }
  end
end