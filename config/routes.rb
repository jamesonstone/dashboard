Dashboard::Application.routes.draw do

  resources :records

  root to: 'pages#root'

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

end
