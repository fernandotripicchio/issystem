class IncucaisController < ApplicationController
  # GET /incucais
  # GET /incucais.json
  def index
    @incucais = Incucai.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incucais }
    end
  end

  # GET /incucais/1
  # GET /incucais/1.json
  def show
    @incucai = Incucai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incucai }
    end
  end

  # GET /incucais/new
  # GET /incucais/new.json
  def new
    @incucai = Incucai.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incucai }
    end
  end

  # GET /incucais/1/edit
  def edit
    @incucai = Incucai.find(params[:id])
  end

  # POST /incucais
  # POST /incucais.json
  def create
    @incucai = Incucai.new(params[:incucai])

    respond_to do |format|
      if @incucai.save
        format.html { redirect_to @incucai, notice: 'Incucai was successfully created.' }
        format.json { render json: @incucai, status: :created, location: @incucai }
      else
        format.html { render action: "new" }
        format.json { render json: @incucai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incucais/1
  # PUT /incucais/1.json
  def update
    @incucai = Incucai.find(params[:id])

    respond_to do |format|
      if @incucai.update_attributes(params[:incucai])
        format.html { redirect_to @incucai, notice: 'Incucai was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incucai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incucais/1
  # DELETE /incucais/1.json
  def destroy
    @incucai = Incucai.find(params[:id])
    @incucai.destroy

    respond_to do |format|
      format.html { redirect_to incucais_url }
      format.json { head :no_content }
    end
  end
end
