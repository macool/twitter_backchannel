TwitterBackchannel::Application.routes.draw do
  resources :tweets do
    collection do
      get :refresh
    end
  end

  root to: 'tweets#index'
end
