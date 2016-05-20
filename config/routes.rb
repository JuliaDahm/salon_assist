Rails.application.routes.draw do
  root 'home#index'
  devise_for :employees, :controllers => { :registrations => "employees/registrations" }
  resources :employees do
    resources :salons do 
      resources :openings
      resources :products 
      resources :services 
    end 
  end
end
