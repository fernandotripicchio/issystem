class AuditoriasController < ApplicationController
  def new
    @auditoria = Auditoria.new(afiliado: @afiliado)
  end
  
  private
  def get_afiliado
    @afiliado = Afiliado.find(parameters[:afiliado_id])
  end
end
