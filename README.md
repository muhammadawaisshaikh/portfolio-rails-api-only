# portfolio-rails-api-only
portfolio-rails-api-only
REFRENCE: https://medium.com/otavio-henrique/creating-simple-rest-api-with-rails-5-1ba71b37cad

# Heroku Deployment
https://portfolio-rails-api-only.herokuapp.com/v1/sliders

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
rails g model Book title:string author:string weight:string publisher:string language:string pages:integer publication_date:datetime
rails g controller v1/tech_talks

# 7. defining resources in routes.rb
resources :books

# 8. defining CRUD methods in controllers 

# 9. CREATE method of controller
GET: http://localhost:3000/v1/socials

{
    "social": {
      "linkedin": "linkedin2",
      "twitter": "twitter2",
      "github": "github2"
    }
}

# 10. INDEX method of controller
GET: http://localhost:3000/v1/socials

# 11. SHOW method of controller
GET: http://localhost:3000/v1/socials/1

# 12. UPDATE method of controller
PUTS: http://localhost:3000/v1/socials/1

{
    "social": {
      "linkedin": "linkedin2",
      "twitter": "twitter2",
      "github": "github2"
    }
}

# 12. DESTROY method of controller
DELETE: http://localhost:3000/v1/socials/3

# RAILS ERD GEM
Rails ERD - Generate Entity-Relationship Diagrams for Rails applications
https://github.com/voormedia/rails-erd
Run: bundle exec erd