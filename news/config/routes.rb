ActionController::Routing::Routes.draw do |map|
  map.root :controller => :articles
  map.resources :articles
  
end
