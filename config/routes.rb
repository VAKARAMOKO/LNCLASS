Rails.application.routes.draw do

  resources :promos do
    resources :classrooms
  end

  resources :classrooms do
    resources :students
  end



  devise_for :users, controllers: { registrations: "users/registrations"}
root to:'promos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
