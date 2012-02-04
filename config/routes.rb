ActionController::Routing::Routes.draw do |map|
  map.contacts '/contacts', :controller => 'contacts', :action => 'index' 
end
