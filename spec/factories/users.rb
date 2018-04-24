FactoryBot.define do
  sequence :email do |n|
    'test#{n}@example.com'
  end

  factory :user do
    fist_name 'Jon'
    last_name 'Snow'
    email {generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end

  factory :admin_user,  class: "AdminUser" do
    fist_name 'Admin'
    last_name 'User'
    email {generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
end
