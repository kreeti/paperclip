source "https://rubygems.org"

gemspec

gem "pry"
gem "sqlite3", platforms: :ruby

# Hinting at development dependencies
# Prevents bundler from taking a long-time to resolve
group :development, :test do
  gem "activerecord-import"
  gem 'bootsnap', require: false
  gem "builder"
  gem 'listen', '~> 3.0.8'
  gem "mime-types"
  gem "rspec"
  gem "rubocop", require: false
  gem "sprockets", "3.7.2"
end
