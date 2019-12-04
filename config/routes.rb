
Rails.application.routes.draw do

  get 'contact/index'
  root 'home#index'

   get 'company/index'
   get 'company/team'
   get 'services/index'
   get 'portfolio/index'
   get 'articles/index'

 # get 'home/index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
