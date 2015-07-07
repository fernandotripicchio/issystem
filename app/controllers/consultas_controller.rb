class ConsultasController < ApplicationController
  layout 'consulta'

  def show

  end

  def formulario_consulta
    @keyword = params[:search][:keyword]
    @afiliado = Afiliado.where(numero_documento: @keyword).first
    render :action => "consultar"

  end

  def consultar

  end

  def resultado

  end
end
