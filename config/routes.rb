Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/categories' => 'categories#index', as: 'categories'
  get '/categories/:id/articles' => 'articles#index', as: 'articles'

  get '/categories/:id/articles' => 'articles#index', as: 'category_articles'
  get '/categories/:cat_id/articles/new' => 'articles#new', as: 'new_category_article'
  get '/categories/:cat_id/articles/:id' => 'articles#show', as: 'category_article'

  post '/categories/:cat_id/articles' => 'articles#create'
  get '/categories/:cat_id/articles/:id/edit' => 'articles#edit', as: 'edit_category_article'
  patch '/categories/:cat_id/articles/:id' => 'articles#update'
  delete '/categories/:cat_id/articles/:id' => 'articles#destroy'

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'




end

