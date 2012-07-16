# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

RedmineApp::Application.routes.draw do
  get  'gripes', :to => 'gripes#index'
  post 'gripes', :to => 'gripes#update'
end
