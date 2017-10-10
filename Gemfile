source 'https://rubygems.org'
ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1', '>= 5.1.2'

# Webserver
gem 'puma', '~> 3.0'

# Data
gem 'pg', '~> 0.18'

# Auth
gem 'devise'

# Others
gem 'uglifier', '>= 1.3.0'

# Json
gem 'active_model_serializers', '~> 0.10.0'

# search
gem 'ransack'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
