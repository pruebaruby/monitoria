Rails.application.routes.draw do
  root 'inicio#index'
  
  get 'login_monitorias' => 'login_monitorias#login'
  post 'login_monitorias' => 'login_monitorias#verificarUsuario'

  get 'dashboard_estudiante' => 'dashboard_estudiante#dashboard_estudiante'
  post 'dashboard_estudiante' => 'dashboard_estudiante#inscribir_monitoria'

  get "dashboard_estudiante/:codigo" => "dashboard_estudiante#usuario"
end
