Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

    root "blog_posts#index"
    get "blog_post/new", to: "blog_posts#new", as: :new_blog
    post "blog_posts", to: "blog_posts#create", as: :blog_posts
    get "blog_post/:id", to: "blog_posts#show", as: :blog_post
end
