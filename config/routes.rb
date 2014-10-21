Farmacia::Application.routes.draw do
  resources :afiliados do
    collection do
      get 'importar'
      post 'parsear'
    end
  end
  
  resources :incucais 
  resources :proveedores
  resources :incucais

  root to: "afiliados#index"
  match 'importar_afiliados' => 'importar_afiliados#importar', :as => :importar_afiliados
  match 'save_importar' => 'importar_afiliados#save_importar', :as => :save_importar
end
