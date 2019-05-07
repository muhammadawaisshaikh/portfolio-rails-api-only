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

# 6. Creating Models & Controllers under respective version directory

# 7. defining resources in routes.rb
resources :books

# 8. defining CRUD methods in controllers 

# 9. Getting responce from index method of controller
GET: http://localhost:3000/v1/socials

# 10. Getting responce from show method of controller
GET: http://localhost:3000/v1/socials/1