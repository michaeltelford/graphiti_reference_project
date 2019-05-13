FactoryBot.define do
  factory :comment do
    post_id { 1 }
    body { "MyText" }
    active { false }
  end
end
