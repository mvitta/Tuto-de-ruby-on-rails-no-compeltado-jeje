Rails.application.routes.draw do
  root 'main#index'
  get '/main', to: 'main#index'
  get '/main/:id', to: 'main#index_by_id'
end
