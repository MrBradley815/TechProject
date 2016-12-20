Rails.application.routes.draw do

    root 'sessions#index'
    post 'sessions/create' => 'sessions#create'
    delete 'sessions/delete' => 'sessions#logout'

    get 'users' => 'users#index'
    get 'users/new' => 'users#new'
    post 'users/create' => 'users#create'
    get 'users/:id' => 'users#show'
    get 'users/edit/:id' => 'users#edit'
    patch 'users/:id' => 'users#update'
    delete 'users/:id' => 'users#destroy'

    get 'companies' => 'companies#index'
    get 'companies/new' => 'companies#new'
    post 'companies/create' => 'companies#create'
    get 'companies/:id' => 'companies#show'
    get 'companies/:id/edit' => 'companies#edit'
    patch 'companies/:id' => 'companies#update'
    delete 'companies/:id' => 'companies#destroy'

    get 'orders' => 'orders#index'
    get 'orders/new' => 'orders#new'
    post 'orders/create' => 'orders#create'
    get 'orders/:id' => 'orders#show'
    get 'orders/:id/edit' => 'orders#edit'
    patch 'orders/:id' => 'orders#update'
    delete 'orders/:id' => 'orders#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
