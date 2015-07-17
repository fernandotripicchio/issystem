module AfiliadosHelper
  def estado_afiliado(afiliado)
    html = afiliado.activo ? "<span class='success label'>" : "<span class='alert label'>"
    html += afiliado.estado
    html +="</span>"
    html.html_safe
  end
end
