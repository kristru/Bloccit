Rails.application.routes.draw do
resources :advertisements

resources :topics do
  resources :posts, except: [:index]
  resources :sponsored_posts, except: [:index]
end

resources :questions
resources :users, only: [:new, :create] do
  get 'confirm'
end

get 'about' => 'welcome#about'

  get 'welcome/contact'

  #added my route to faq page
  get 'welcome/faq'

#default page the app will load
  root 'welcome#index'

  post 'users/confirm'
end
