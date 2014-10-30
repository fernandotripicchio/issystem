class OrdenesController < ApplicationController
  # GET /ordenes
  # GET /ordenes.json
  def index
    @ordenes = Orden.order("id").page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ordenes }
    end
  end

  # GET /ordenes/1
  # GET /ordenes/1.json
  def show
    @orden = Orden.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orden }
    end
  end

  # GET /ordenes/new
  # GET /ordenes/new.json
  def new
    @orden = Orden.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orden }
    end
  end

  # GET /ordenes/1/edit
  def edit
    @orden = Orden.find(params[:id])
  end

  # POST /ordenes
  # POST /ordenes.json
  def create
    @orden = Orden.new(params[:orden])

    respond_to do |format|
      if @orden.save
        format.html { redirect_to @orden, notice: 'Orden was successfully created.' }
        format.json { render json: @orden, status: :created, location: @orden }
      else
        format.html { render action: "new" }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ordenes/1
  # PUT /ordenes/1.json
  def update
    @orden = Orden.find(params[:id])

    respond_to do |format|
      if @orden.update_attributes(params[:orden])
        format.html { redirect_to @orden, notice: 'Orden was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenes/1
  # DELETE /ordenes/1.json
  def destroy
    @orden = Orden.find(params[:id])
    @orden.destroy

    respond_to do |format|
      format.html { redirect_to ordenes_url }
      format.json { head :no_content }
    end
  end
  
  def search
    @search = Orden.search do
      fulltext params[:search][:keyword]
      #paginate(page: params[:page], per_page: 10)
    end
    #@afiliados = @search.results
    @keyword = params[:search][:keyword]
    @ordenes = Orden.where(id: @search.results.map(&:id)).page(params[:page]).per(10)    
    render :action => "index"
  end  
end
