Rails.application.routes.draw do

  get 'contact/index'
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
