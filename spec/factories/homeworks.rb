FactoryBot.define do
  factory :homework do
    lesson { nil }
    title { "MyString" }
    content { "MyText" }
    description { "MyString" }
  end
end
