TwitterBackchannel::Application.routes.draw do

  resources :tweets

  root to: 'tweets#index'

  match '*a', :to => 'application#routing_error'

end
