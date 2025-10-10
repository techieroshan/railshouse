Rails.application.routes.draw do

  get 'contact/index'
  get 'contact/quote', to: 'contact#quote', as: 'request_quote'
  root 'home#index'

   get 'company/index'
   get 'company/team'
   get 'services/index'
   
   # Service detail pages
   get 'services/consulting', to: 'services#consulting', as: 'services_consulting'
   get 'services/migration', to: 'services#migration', as: 'services_migration'
   get 'services/maintenance', to: 'services#maintenance', as: 'services_maintenance'
   get 'services/staffing', to: 'services#staffing', as: 'services_staffing'
   get 'services/development', to: 'services#development', as: 'services_development'
   get 'services/testing', to: 'services#testing', as: 'services_testing'
   get 'services/seo', to: 'services#seo', as: 'services_seo'
   get 'services/refactoring', to: 'services#refactoring', as: 'services_refactoring'
   get 'services/frontend', to: 'services#frontend', as: 'services_frontend'
   get 'services/performance', to: 'services#performance', as: 'services_performance'
   get 'services/training', to: 'services#training', as: 'services_training'
   get 'services/advisory', to: 'services#advisory', as: 'services_advisory'
   
   resources :portfolio, only: [:index, :show]
   
   resources :articles do
     collection do
       get 'category/:category', action: :index, as: :category
       get 'archive/:year/:month', action: :index, as: :archive
     end
   end

   # Sitemap
   get 'sitemap.xml', to: 'sitemaps#index', defaults: { format: 'xml' }

 # get 'home/index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
