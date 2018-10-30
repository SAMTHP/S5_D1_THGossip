Rails.application.routes.draw do
  get '/', to: 'static#index'
  post '/', to: 'static#index_post'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  post '/contact', to: 'static#contact_post'
  get '/welcome/:first_name', to: 'static#welcome'
  get '/:id', to: 'static#gossip'
end
