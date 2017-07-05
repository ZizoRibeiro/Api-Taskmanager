Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
    # To organize controllers by namespace, format Json, subdomain api, path: "/" ex: api.taskmanager.com/


  end

end

# api.task-manager.net
