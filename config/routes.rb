Rails.application.routes.draw do
  root "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles', to: 'articles#index'

  get '/takumi' , to: 'articles#showsub'

  get '/reset' , to: 'articles#num_reset'

  get '/articles/:id' , to: "articles#show"

  #投稿機能の試み
  get '/new' , to: 'articles#new'

  post '/create' , to: 'articles#create'
  
end