FactoryBot.define do
  factory :post do
    date Date.today
    rationale "some rationale"
    overtime_request 3.5
    status
    user
  end
  factory :second_post,  class: "Post" do
    date Date.yesterday
    rationale "some aditional rationale"
    overtime_request 0.5
    status
    user
  end


end
