Rails.application.routes.draw do

  namespace :game do
    resources :match_stats
  end
  namespace :game do
    resources :matches
  end
  namespace :game do
    resources :category_schedules
  end
  namespace :game do
    resources :club_categories
  end
  namespace :game do
    resources :clubs
  end
  resources :tournaments
  devise_for :users

  resources :news, controller: 'news' do
    # get 'tags/:tag', to: 'news#tags'
  end
  get 'news/tags/:tag', to: 'news#tags'

  resources :stories
  get 'stories/tags/:tag', to: 'stories#tags'

  # get 'stories/index'
  get 'toolbox/index'
  get 'tournaments/index'
  # get 'histories/index'
  get 'team/index'
  get 'home/index'
  get 'home/aboute'

  # load pdf
  # mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'

  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
