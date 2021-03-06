Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      scope 'categories' do
        get 'index', to: 'categories#index'
        get 'show/:id', to: 'categories#show'       
        post 'create', to: 'categories#create'       
        patch 'update/:id', to: 'categories#update'
        delete "delete/:id", to: 'categories#delete'
        get "categories_products/:id", to: 'categories#category_filter'
      end
    end
  end
  namespace 'api' do
    namespace 'v1' do
      scope 'products' do
        get 'index', to: 'products#index'
        get 'show/:id', to: 'products#show'
        post 'create', to: 'products#create'
        patch 'update/:id', to: 'products#update'
        delete "delete/:id", to: 'products#delete'
      end
    end
  end
end