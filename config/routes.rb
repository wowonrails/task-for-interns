require "sidekiq/web"

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"

  resources :feedbacks, only: %i[new create]

  scope module: "admin" do
    mount Sidekiq::Web, at: "/sidekiq"

    resources :feedbacks, only: :index
    resource :feedbacks_search, only: :show
  end
end
