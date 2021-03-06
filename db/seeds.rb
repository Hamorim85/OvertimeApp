@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Hugo",
                    last_name: "Amorim",
                    phone: "21998692728" )

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Amorim",
                 phone:"21998692728")

puts "1 Admin User created"


AuditLog.create!(user_id: @user.id, status: 0, start_date:(Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date:(Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date:(Date.today - 20.days))

puts "3 Audit Logs have been created"

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content Lorem ipsum
    dolor sit amet, consectetur adipiscing elit. Nam eu ex enim. Proin sed justo
    tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
    cubilia Curae; In efficitur ornare mauris, a vestibulum erat lobortis sit amet. ",
    user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"



