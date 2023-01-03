# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "factory_bot_rails"
require "faker"
require "gimei"

accounts = []

# 活動中アカウント
20.times do
  accounts << {
    name: Gimei.unique.first.send(%w[hiragana katakana romaji].sample),
    last_login: Faker::Time.between(from: 10.days.ago, to: DateTime.now).to_datetime,
    registration_date: Faker::Time.between(from: 2.year.ago.to_datetime, to: DateTime.now - 10).to_datetime,
    suspend: false
  }
end

# 休眠アカウント
8.times do
  accounts << {
    name: Gimei.unique.first.send(%w[hiragana katakana romaji].sample),
    last_login: Faker::Time.between(from: 10.days.ago, to: DateTime.now).to_datetime,
    registration_date: Faker::Time.between(from: 2.year.ago.to_datetime, to: DateTime.now - 10).to_datetime,
    suspend: true
  }
end

# ページャ確認用アカウント
15.times do
  accounts << {
    name: "src" + Gimei.unique.first.send(%w[hiragana katakana romaji].sample),
    last_login: Faker::Time.between(from: 10.days.ago, to: DateTime.now).to_datetime,
    registration_date: Faker::Time.between(from: 2.year.ago.to_datetime, to: DateTime.now - 10).to_datetime,
    suspend: false
  }
end


Player.create(accounts)
