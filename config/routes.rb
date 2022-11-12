Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :simulations do
      get '/marcar-realizada', to: "simulations#marcar_realizada", as: "marcar_realizada"
    end
    resources :microinsulto_encuesta_inicials
    resources :microinsulto_encuesta_finals

    resources :microasalto_encuesta_inicials
    resources :microasalto_encuesta_finals

    resources :microinvalidacion_encuesta_inicials
    resources :microinvalidacion_encuesta_finals
  end

  resources :empresas do
    get '/new_user', to:"users#new", as: "new_user"
  end

  devise_scope :user do
    authenticated :user do
      root 'static#index', as: :authenticated_root
      post 'users/:id/edit', to: "users#update", as: "update_user"
      delete 'user/:id', to: "users#destroy", as: "destroy_user"
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get '/simulaciones', to: "static#simulaciones", as: "simulaciones"
  get '/resultados/:user_id', to: "static#resultados", as: "resultados"
  get '/microinsulto/:user_id', to: "static#microinsulto", as: "microinsulto"
  get '/microasalto/:user_id', to: "static#microasalto", as: "microasalto"
  get '/microinvalidacion/:user_id', to: "static#microinvalidacion", as: "microinvalidacion"

  
  #API
  get "/api/show_user", to: "api#show_user", as: "api_show_user"
  post "/api/simulacion_realizada", to: "api#simulacion_realizada", as: "api_simulacion_realizada"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
