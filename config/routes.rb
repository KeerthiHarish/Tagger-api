Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :tags do
      collection do
        get ':type/:id', to: 'tags#retrive'
        delete ':type/:id', to: 'tags#destroy'
      end
    end

    resources :stats
  end
end
