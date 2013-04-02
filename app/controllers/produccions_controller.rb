class ProduccionsController < ApplicationController
  # GET /produccions
  # GET /produccions.json
  def index
    @produccions = Produccion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @produccions }
    end
  end

  # GET /produccions/1
  # GET /produccions/1.json
  def show
    @produccion = Produccion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @produccion }
    end
  end

  # GET /produccions/new
  # GET /produccions/new.json
  def new
    @produccion = Produccion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produccion }
    end
  end

  # GET /produccions/1/edit
  def edit
    @produccion = Produccion.find(params[:id])
  end

  # POST /produccions
  # POST /produccions.json
  def create
    @produccion = Produccion.new(params[:produccion])

    respond_to do |format|
      if @produccion.save
        format.html { redirect_to @produccion, notice: 'Se ha creado satisfactoriamente.' }
        format.json { render json: @produccion, status: :created, location: @produccion }
      else
        format.html { render action: "new" }
        format.json { render json: @produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /produccions/1
  # PUT /produccions/1.json
  def update
    @produccion = Produccion.find(params[:id])

    respond_to do |format|
      if @produccion.update_attributes(params[:produccion])
        format.html { redirect_to @produccion, notice: 'Se ha modificado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produccions/1
  # DELETE /produccions/1.json
  def destroy
    @produccion = Produccion.find(params[:id])
    @produccion.destroy

    respond_to do |format|
      format.html { redirect_to produccions_url }
      format.json { head :no_content }
    end
  end
end
