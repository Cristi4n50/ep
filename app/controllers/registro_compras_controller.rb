class RegistroComprasController < ApplicationController
  # GET /registro_compras
  # GET /registro_compras.json
  def index
    @registro_compras = RegistroCompra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registro_compras }
    end
  end

  # GET /registro_compras/1
  # GET /registro_compras/1.json
  def show
    @registro_compra = RegistroCompra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registro_compra }
    end
  end

  # GET /registro_compras/new
  # GET /registro_compras/new.json
  def new
    @registro_compra = RegistroCompra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registro_compra }
    end
  end

  # GET /registro_compras/1/edit
  def edit
    @registro_compra = RegistroCompra.find(params[:id])
  end

  # POST /registro_compras
  # POST /registro_compras.json
  def create
    @registro_compra = RegistroCompra.new(params[:registro_compra])

    respond_to do |format|
      if @registro_compra.save
        format.html { redirect_to @registro_compra, notice: 'Se ha creado satisfactoriamente.' }
        format.json { render json: @registro_compra, status: :created, location: @registro_compra }
      else
        format.html { render action: "new" }
        format.json { render json: @registro_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /registro_compras/1
  # PUT /registro_compras/1.json
  def update
    @registro_compra = RegistroCompra.find(params[:id])

    respond_to do |format|
      if @registro_compra.update_attributes(params[:registro_compra])
        format.html { redirect_to @registro_compra, notice: 'Se ha modificado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registro_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_compras/1
  # DELETE /registro_compras/1.json
  def destroy
    @registro_compra = RegistroCompra.find(params[:id])
    @registro_compra.destroy

    respond_to do |format|
      format.html { redirect_to registro_compras_url }
      format.json { head :no_content }
    end
  end
end
