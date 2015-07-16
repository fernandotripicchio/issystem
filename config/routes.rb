Farmacia::Application.routes.draw do
  devise_for :users
  resources :afiliados do
    collection do
      get 'importar'
      post 'parsear'
      get 'search'
    end
    resources :auditorias
  end

  resources :incucais
  resources :proveedores do
    collection do
      get 'search'
    end
    resources :prestaciones
  end
  resources :incucais
  resources :medicamentos
  resources :ordenes do
    collection do
      get 'search'
    end
  end

  root to: "afiliados#index"
  match 'importar_afiliados' => 'importar_afiliados#importar', :as => :importar_afiliados
  match 'save_importar' => 'importar_afiliados#save_importar', :as => :save_importar

  match 'importar_bajas_afiliados' => 'importar_afiliados#importar_bajas', :as => :importar_bajas_afiliados
  match 'save_importar_bajas' => 'importar_afiliados#save_importar_bajas', :as => :save_importar_bajas


  #Consultar afiliados
  match 'mostrar_resultados' => 'consultas#formulario_consulta', :as => :formulario_consultas
  match 'consultar' => 'consultas#consultar', :as => :consulta_afiliado
  match 'resultados' => 'consultas#resultado', :as => :resultado_afiliado
  match 'mostrar_resultados' => 'consultas#listado', :as => :listado_afiliado
end
