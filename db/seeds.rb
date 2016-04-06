100.times do
  User.create(
    :first_name => Faker::Name.first_name,
    :last_name => Faker::Name.last_name,
    :email => Faker::Internet.email,
    :image => Faker::Avatar.image,
    :image_slug => Faker::Avatar.image("my-own-slug"),
    :motto => Faker::Lorem.sentence
  )
end