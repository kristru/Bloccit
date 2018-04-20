Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

#default page the app will load
  root 'welcome#index'
end
