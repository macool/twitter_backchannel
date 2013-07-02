TwitterBackchannel::Application.routes.draw do

  resources :tweets

  match '*a', :to => 'application#routing_error'

end
