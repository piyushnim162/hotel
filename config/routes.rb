Rails.application.routes.draw do
  devise_for :hotel_owners
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  # devise_for :hotel_owners, controllers:{
  #             sessions: 'hotel_owners/sessions', 
  #             password: 'hotel_owners/password',
  #             registrations: 'hotel_owners/registrations',
  #             confirmation: 'hotel_owners/confirmatons'
  #            }
  
  resources :hotels do 
    get 'room', to: 'hotels#room'
  end

    # delete '/destroy_hotel', to: 'hotels#destroy_hotel' ,on: :memeber
  
end
