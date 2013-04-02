class EstampadosController < ApplicationController
  # GET /estampados
  # GET /estampados.json
  def index
    @estampados = Estampado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estampados }
    end
  end

  # GET /estampados/1
  # GET /estampados/1.json
  def show
    @estampado = Estampado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estampado }
    end
  end

  # GET /estampados/new
  # GET /estampados/new.json
  def new
    @estampado = Estampado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estampado }
    end
  end

  # GET /estampados/1/edit
  def edit
    @estampado = Estampado.find(params[:id])
  end

  # POST /estampados
  # POST /estampados.json
  def create
    @estampado = Estampado.new(params[:estampado])

    respond_to do |format|
      if @estampado.save
        format.html { redirect_to @estampado, notice: 'Se ha creado satisfactoriamente.' }
        format.json { render json: @estampado, status: :created, location: @estampado }
      else
        format.html { render action: "new" }
        format.json { render json: @estampado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estampados/1
  # PUT /estampados/1.json
  def update
    @estampado = Estampado.find(params[:id])

    respond_to do |format|
      if @estampado.update_attributes(params[:estampado])
        format.html { redirect_to @estampado, notice: 'Se ha modificado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estampado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estampados/1
  # DELETE /estampados/1.json
  def destroy
    @estampado = Estampado.find(params[:id])
    @estampado.destroy

    respond_to do |format|
      format.html { redirect_to estampados_url }
      format.json { head :no_content }
    end
  end
end
