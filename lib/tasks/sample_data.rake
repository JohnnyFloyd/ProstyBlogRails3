namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin",
                         email: "admin@mail.com",
                         password: "admin1",
                         password_confirmation: "admin1")
    admin.toggle!(:admin)
    10.times do |n|
      name  = Faker::Name.name
      email = "user#{n+1}@prostyblog.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end