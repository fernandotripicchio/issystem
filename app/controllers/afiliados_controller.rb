class AfiliadosController < ApplicationController
  # GET /afiliados
  # GET /afiliados.json
  def index
    @afiliados = Afiliado.order("apellido_nombre").page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @afiliados }
    end
  end

  # GET /afiliados/1
  # GET /afiliados/1.json
  def show
    @afiliado = Afiliado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @afiliado }
    end
  end

  # GET /afiliados/new
  # GET /afiliados/new.json
  def new
    @afiliado = Afiliado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @afiliado }
    end
  end

  # GET /afiliados/1/edit
  def edit
    @afiliado = Afiliado.find(params[:id])
  end

  # POST /afiliados
  # POST /afiliados.json
  def create
    @afiliado = Afiliado.new(params[:afiliado])

    respond_to do |format|
      if @afiliado.save
        format.html { redirect_to @afiliado, notice: 'El afiliado se creo con exito' }
        format.json { render json: @afiliado, status: :created, location: @afiliado }
      else
        format.html { render action: "new" }
        format.json { render json: @afiliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /afiliados/1
  # PUT /afiliados/1.json
  def update
    @afiliado = Afiliado.find(params[:id])

    respond_to do |format|
      if @afiliado.update_attributes(params[:afiliado])
        format.html { redirect_to @afiliado, notice: 'El afiliado se actualizo con exito.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @afiliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /afiliados/1
  # DELETE /afiliados/1.json
  def destroy
    @afiliado = Afiliado.find(params[:id])
    @afiliado.destroy

    respond_to do |format|
      format.html { redirect_to afiliados_url }
      format.json { head :no_content }
    end
  end
end
