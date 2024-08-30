Rails.application.routes.draw do
  devise_for :users

  resources :companies do
    resources :employees, only: [:new, :create, :index, :show] do
      resources :reimbursements, only: [:new, :create, :index, :show]
    end
  end

  root 'companies#index'
end
