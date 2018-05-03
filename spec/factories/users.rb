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
    phone '5555555555'
  end

  factory :admin_user,  class: "AdminUser" do
    fist_name 'Admin'
    last_name 'User'
    email {generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '5555555555'
  end

  factory :non_authorized_user,  class: "User" do
    fist_name 'non'
    last_name 'User'
    email {generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '5555555555'
  end

end
