Rails.application.routes.draw do
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
    
end
