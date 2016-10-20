FactoryGirl.define do
  factory :comment do
    autor "Mihalkov"
    # body  "something blabla"
    sequence(:body) {|n| "somthing blabla #{n}"}

  end
end
