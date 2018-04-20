Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

#default page the app will load
  root 'welcome#index'
end
