Rails.application.routes.draw do
resources :advertisements

resources :topics do
  resources :posts, except: [:index]
  resources :sponsored_posts, except: [:index]
end

#only:[] is used so /posrs/:id routes aren't created. Only posts/:post_is/comments
resources :posts, only: [] do
  resources :comments, only: [:create, :destroy]
  post '/up-vote' => 'votes#up_vote', as: :up_vote
  post '/down-vote' => 'votes#down_vote', as: :down_vote
end

resources :questions
resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]


post 'users/confirm' => 'users#confirm'

get 'users' =>'users#create'

get 'about' => 'welcome#about'

  get 'welcome/contact'

  #added my route to faq page
  get 'welcome/faq'

#default page the app will load
  root 'welcome#index'
end
