require 'open-uri'

if Rails.env.development?
  Book.destroy_all
  Author.destroy_all
end

100.times do
  author = Author.create name: Faker::Book.author
  file = URI.open('https://thispersondoesnotexist.com/image')
  author.avatar.attach(io: file, filename: 'face.png', content_type: 'image/png')
end

1000.times do
  Book.create title: Faker::Book.title, author: Author.all.sample
end
