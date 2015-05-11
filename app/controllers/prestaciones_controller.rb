class PrestacionesController < ApplicationController
  before_filter :set_prestacion, only: [:show, :edit, :update, :destroy, :create]

  def index
    @prestaciones = @afiliado.prestaciones.all
    respond_with(@prestaciones)
  end

  def show
    respond_with(@prestacion)
  end

  def new
    @prestacion = Prestacion.new
    respond_to do |format|
      format.html 
      format.json { render json: @proveedor }
    end    
  end

  def edit
  end

  def create
    @prestacion = Prestacion.new(params[:prestacion])
    @prestacion.save
    respond_with(@prestacion)
  end

  def update
    @prestacion.update_attributes(params[:prestacion])
    respond_with(@prestacion)
  end

  def destroy
    @prestacion.destroy
    respond_with(@prestacion)
  end

  private
  def set_prestacion
    @proveedor = Proveedor.find(params[:proveedor_id])
    @prestacion = Prestacion.find(params[:id]) if params[:id]
  end
end
