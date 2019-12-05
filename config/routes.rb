Rails.application.routes.draw do
  api_version(:module => "V1", :path => {:value => "v1"}) do
    resources :socials
    resources :sliders
    resources :skills
    resources :abouts
    resources :experiences
    resources :projects
    resources :testimonials
    resources :contacts
    resources :certifications
    resources :educations
  end
end
