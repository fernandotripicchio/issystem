class RegistroPrestacionesController < ApplicationController
  def new
    @proveedor = Proveedor.find(params[:proveedor_id])
    @registro_prestacion = RegistroPrestacion.new
    @prestaciones = Prestacion.all
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
end
