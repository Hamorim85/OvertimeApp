FactoryBot.define do
  factory :post do
    date Date.today
    rationale "some rationale"
    status
    user
  end
  factory :second_post,  class: "Post" do
    date Date.yesterday
    rationale "some aditional rationale"
    status
    user
  end


end
