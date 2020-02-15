# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
  (1..30).each do |i|
    Schedule.create(name: "ユーザ#{i}", title: "タイトル#{i}", body: "本文#{i}", deadline: "2020/03/#{i}/12:00", complete: false)
  end
end
