
User.create!(name:  "JARIPOG",
    email: "example@jaripog.inc",
    password:              "qwerty123",
    password_confirmation: "qwerty123",
    admin: true)

99.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@jaripog.inc"
password = "Password-1"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password)
end