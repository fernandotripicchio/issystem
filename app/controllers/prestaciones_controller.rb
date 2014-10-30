class PrestacionesController < ApplicationController
  before_filter :set_prestacion, only: [:show, :edit, :update, :destroy]

  def index
    @prestaciones = Prestacion.all
    respond_with(@prestaciones)
  end

  def show
    respond_with(@prestacion)
  end

  def new
    @prestacion = Prestacion.new
    respond_with(@prestacion)
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
      @prestacion = Prestacion.find(params[:id])
    end
end
