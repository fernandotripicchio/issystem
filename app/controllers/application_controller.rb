class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for user
    return consulta_afiliado_path  if user.is_consulta?
    afiliados_path
  end  
end
