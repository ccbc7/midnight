Rails.application.routes.draw do
  get "/" => "plans#index"
  resources:plans
  # get 'users/index'
  # resources:users

end
