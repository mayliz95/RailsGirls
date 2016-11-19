Rails.application.routes.draw do
  get 'pages/info'

  resources :helados

  root :to => redirect('/helados')
end
