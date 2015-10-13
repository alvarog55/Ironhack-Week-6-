Rails.application.routes.draw do
  namespace :api do
    resources :players, except: [:new, :edit] do
      resources :matches, except: [:new, :edit]
    end
  end
end