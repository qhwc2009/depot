Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users

  scope '(:locale)' do
    resources :carts
    resources :orders
    resources :line_items do
      put 'decrement', on: :member
    end
    root 'store#index', as: 'store_index', via: :all
  end


  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
