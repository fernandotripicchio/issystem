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

  #Consultar afiliados
  match 'mostrar_resultados' => 'consultas#formulario_consulta', :as => :formulario_consultas
  match 'consultar' => 'consultas#consultar', :as => :consulta_afiliado
  match 'resultados' => 'consultas#resultado', :as => :resultado_afiliado
  match 'mostrar_resultados' => 'consultas#listado', :as => :listado_afiliado
end
