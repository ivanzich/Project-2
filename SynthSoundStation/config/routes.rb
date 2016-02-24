Rails.application.routes.draw do
  
  root "static#home"

  # get 'soundcloud/connect'

  get 'soundcloud/connected'

  get 'soundcloud/destroy'

  get 'static/home'


  get '/soundcloud/connect',    :to => 'soundcloud#connect'

  get 'soundcloud/oauth-callback', to: 'soundcloud#connected'

  get 'logout', to: 'soundcloud#destroy', as: 'logout'


  
end

