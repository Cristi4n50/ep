class BordadosController < ApplicationController
  # GET /bordados
  # GET /bordados.json
  def index
    @bordados = Bordado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bordados }
    end
  end

  # GET /bordados/1
  # GET /bordados/1.json
  def show
    @bordado = Bordado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bordado }
    end
  end

  # GET /bordados/new
  # GET /bordados/new.json
  def new
    @bordado = Bordado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bordado }
    end
  end

  # GET /bordados/1/edit
  def edit
    @bordado = Bordado.find(params[:id])
  end

  # POST /bordados
  # POST /bordados.json
  def create
    @bordado = Bordado.new(params[:bordado])

    respond_to do |format|
      if @bordado.save
        format.html { redirect_to @bordado, notice: 'Se ha creado satisfactoriamente.' }
        format.json { render json: @bordado, status: :created, location: @bordado }
      else
        format.html { render action: "new" }
        format.json { render json: @bordado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bordados/1
  # PUT /bordados/1.json
  def update
    @bordado = Bordado.find(params[:id])

    respond_to do |format|
      if @bordado.update_attributes(params[:bordado])
        format.html { redirect_to @bordado, notice: 'Se ha modificado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bordado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bordados/1
  # DELETE /bordados/1.json
  def destroy
    @bordado = Bordado.find(params[:id])
    @bordado.destroy

    respond_to do |format|
      format.html { redirect_to bordados_url }
      format.json { head :no_content }
    end
  end
end
