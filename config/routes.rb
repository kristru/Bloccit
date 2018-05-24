Rails.application.routes.draw do
resources :advertisements

resources :topics do
  resources :posts, except: [:index]
end

resources :questions

get 'about' => 'welcome#about'

  get 'welcome/contact'

  #added my route to faq page
  get 'welcome/faq'

#default page the app will load
  root 'welcome#index'
end
