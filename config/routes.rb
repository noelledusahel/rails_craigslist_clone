Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'welcome#index'
  get '/categories' => 'categories#index', as: 'categories'
  get '/categories/:id/articles' => 'articles#index', as: 'articles'

  # get '/categories/:id/articles' => 'articles#index', as: 'category_articles'
  get '/categories/:cat_id/articles/new' => 'articles#new', as: 'new_article'
  get '/categories/:cat_id/articles/:id' => 'articles#show', as: 'article'

  post '/categories/:cat_id/articles' => 'articles#create'
end

