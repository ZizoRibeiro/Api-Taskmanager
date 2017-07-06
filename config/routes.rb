require 'api_version_constraint'

Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    # To organize controllers by namespace, format Json, subdomain api, path: '/' ex: api.taskmanager.com/
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :users, only: [:show]
    end

    # namespace :v2, path: '/", constraints: ApiVersionConstraint.new(version: 2) do
    #   resources :tasks
    # end

  end

end

# api.task-manager.net
