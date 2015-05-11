class PrestacionesController < ApplicationController
  before_filter :set_prestacion, only: [:new, :show, :edit, :update, :destroy, :create, :index]

  def index
    @prestaciones = @proveedor.prestaciones.all
    respond_to do |format|
      format.html 
      format.json { render json: @prestaciones }
    end 
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
    if @prestacion.save
      flash[:notice] = 'Los datos se guardaron con exito'
      respond_to do|format|
        format.html { redirect_to proveedores_path }
      end
    else
      flash[:error] = 'Hubo un problema al momento de guardar los datos'
      respond_to do|format|
        format.html { render :new }
      end
    end  
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
