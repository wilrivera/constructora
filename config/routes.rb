Rails.application.routes.draw do
  resources :bancos
  resources :forma_pagos
  resources :venta
  resources :user_profiles

  
  get 'lista_departamentos/index'

	resources :lista_departamentos do
		member do
			get :delete
			get :show_user
  		end
  	end

	#get 'lista_departamentos/index'

	#resources :lista_departamentos

    resources :detalle_departamentos do
		member do
			get :delete
		end
  	end

	resources :contactos
	resources :bloqueos
	resources :usuarios

  	resources :alumnos
  	get 'home/index'
  	


  resources :departamentos do
    member do
		get :delete
		get 'listadepartamentos'
		
	  end
   end

  	resources :citations do
  		member do
			get :delete
			get :show_user
  		end
	end

	resources :proyectos do
		member do
			get :delete
			get 'listaproyectos'
		end
   end


	resources :alumnos

	
	get 'home/index'



	get 'static/aboutus'
	get 'static/contactus'
	get 'static/proyectos'
	get 'static/faq'

	get 'usuarios/index'
	get 'static/registroVta'
	get 'static/reporteDptos'

	get 'static/busquedacitas'
	get 'static/proforma'
	get 'static/separardepartamento'
	get 'static/detalledepartamento'
	get 'static/solicitarcita'
	get 'static/departamentos'
	

	root 'home#index'

	post 'static/mimetodo'


	get 'signup' => 'usuarios#new'
	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
	

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
