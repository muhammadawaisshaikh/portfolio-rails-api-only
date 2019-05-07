# portfolio-rails-api-only
portfolio-rails-api-only

# 1. creating API only app
rails new library --api -d postgresql -T

# 2. Installing Rspec
group :development, :test do
  gem 'rspec-rails', '~> 3.6'
end

# 3. add factory girl to your gemfile
gem 'factory_girl'

# 4. Setting API Versioning
gem 'versionist'

# 5. Creating version in a namespace in routes.rb
rails generate versionist:new_api_version v1 V1 --path=value:v1