# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating 20 fake articles...'

20.times do
  article = Article.new(
    title: Faker::Lorem.sentence(word_count: 2, supplemental: false, random_words_to_add: 4),
    content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 6)
  )
  article.save!
end

puts 'Finished'
