Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # Define las rutas para posts
    resources :posts do
      # Define las rutas anidadas para comentarios dentro de posts
      resources :comments
    end
  
    # Puedes definir una ruta raíz si lo deseas, por ejemplo, para mostrar todos los posts
    root "posts#index"
end
