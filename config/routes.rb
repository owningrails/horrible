Horrible::Application.routes.draw do
  resources :accounts
  resources :feedbacks

  root 'accounts#new'
end
