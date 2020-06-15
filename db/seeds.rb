require 'faker'

Shortens.destroy_all

10.times do |_|
  puts "Bootstrapping Url's"
  shorten = Shortens.new do |shorten|
    shorten.redirect_url = Faker::Internet.domain_name
  end
  shorten.save
end
