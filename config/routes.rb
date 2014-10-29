Farmacia::Application.routes.draw do
  resources :afiliados do
    collection do
      get 'importar'
      post 'parsear'
      get 'search'
    end
  end
  
  resources :incucais 
  resources :proveedores do
    collection do
      get 'search'
    end
  end
  resources :incucais
  resources :medicamentos
  resources :ordenes

  root to: "afiliados#index"
  match 'importar_afiliados' => 'importar_afiliados#importar', :as => :importar_afiliados
  match 'save_importar' => 'importar_afiliados#save_importar', :as => :save_importar
end
