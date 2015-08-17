Dashboard::Application.routes.draw do

  root to: 'pages#root'
  dashboard_record_controller to: 'dashboard_record#root'

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

end
