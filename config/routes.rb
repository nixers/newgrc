Audit::Application.routes.draw do
  
  match  'delete_index' => 'delete#index' , :as => 'delete_index'

  match 'find_index' => 'find#index' , :as => 'find_index'

  match 'dashboard_index' => 'dashboard#index' , :as => 'dashboard_index'

  match 'print_index' => 'print#index' , :as => 'print_index'

  match 'excel_index' => 'excel#index' , :as => 'excel_index'

  match 'audit_index' => 'audit#index' , :as => 'audit_index'

  match 'report_index' => 'report#index' , :as => 'report_index'

  match 'recommendation_index' => 'recommendation#index' , :as => 'recommendation_index'

  match 'actions_index'  => 'actions#index' , :as => 'actions_index'

  match 'governance_index' => 'governance#index' , :as => 'governance_index'

  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

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
   root :to => 'audit#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
