Rails.application.routes.draw do
  get 'sends/index'

  get 'zams/index'
  scope '/categories' do
      get 'zams/index'
  end
    scope '/posts' do
      get 'zams/index'
  end
##поисковик
  get 'results/index'
##пароли
  devise_for :users
##обычные страницы
root 'posts#welcom'
resources :posts, only: [:show, :index, :welcom]
resources :categories, only: [:show]
    
##админка
 namespace :admin do
     resources :posts, except: [:show, :index, :welcom]
    resources :categories, except: [:show]   
 end

##вызов замерщика

    
end
