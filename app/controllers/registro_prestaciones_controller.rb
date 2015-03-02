class RegistroPrestacionesController < ApplicationController
  before_filter :set_afiliado, only: [:show, :edit, :update, :destroy, :new, :create, :index]
  
  
  def index
    @prestaciones = @afiliado.prestaciones.page(params[:page]).per(15)
  end
  
  def new
    @proveedor = Proveedor.all
    @registro_prestacion = RegistroPrestacion.new
    @prestaciones = Prestacion.all
    respond_to do|format|
        format.html
        format.js
    end  
  end
  
  def create
    @registro_prestacion = RegistroPrestacion.new(params[:registro_prestacion])

    respond_to do |format|
      if @registro_prestacion.save
        format.html { redirect_to @registro_prestacion, notice: 'El registro se creo con exito' }
        format.json { render json: @registro_prestacion, status: :created, location: @registro_prestacion }
      else
        format.html { render action: "new" }
        format.json { render json: @registro_prestacion.errors, status: :unprocessable_entity }
      end
    end
  end
  
 private
 def set_afiliado
    @afiliado = Afiliado.find(params[:afiliado_id])
 end
end
