Spree::Core::Engine.routes.draw do
  
  resources :contacts, :only => [:new, :create]
  
  namespace :admin do
    resources :contacts
  end

  match '/contact' => 'contacts#new', :as => :contact

end
