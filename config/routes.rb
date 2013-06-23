TECHMcSbAip2013::Application.routes.draw do

  get "resellers/search"

  resources :partners do
    resources :products
  end

  resources :resellers do
    resources :products
  end

  resources :designers do
    resources :products
  end

  resources :categories do
    resources :products
  end

  get "admin/designers"
  get "admin/events"
  get "admin/partners"
  get "admin/resellers"
  get "admin/services"
  get "admin/contacts"
  get "contacts/confirm"
  get 'admin/products'
  get 'admin/index'

  get "about_us/tradition"
  get "about_us/company"
  get "about_us/index"

  resources :partners
  resources :services
  resources :resellers
  resources :events
  resources :designers
  resources :home
  resources :categories
  resources :products
  resources :contacts

  root :to => 'home#index'

  match 'admin' => 'admin#index', :via => :get, :as => :admin
  match 'products' => 'categories#index', :via => :get, :as => :products
  match 'home' => 'home#index', :via => :get, :as => :home
  match 'about_us' => 'about_us#company', :via => :get, :as => :about_us

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
