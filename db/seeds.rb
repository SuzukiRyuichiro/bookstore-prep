if Rails.env.development?
  Book.destroy_all
  Author.destroy_all
end

100.times do
  Author.create name: Faker::Book.author
end

1000.times do
  Book.create title: Faker::Book.title, author: Author.all.sample
end
