Rails.application.routes.draw do
  scope "(:locale)", :locale => /en|es/ do
    devise_for :users
    resources :tasks do
      collection do
        post 'search'
      end
    end
    root 'welcome#index', to: 'welcome#index', as: "home"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
