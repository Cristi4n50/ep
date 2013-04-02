class DatosContactosController < ApplicationController

  before_filter :find_datos_contacto, :except => [ :index, :create, :new ]

  def index
    @datos_contactos = DatosContacto.all

    respond_to do |format|
      format.html 
      format.json { render json: @datos_contactos }
    end
  end

  def show

    respond_to do |format|
      format.html 
      format.json { render json: @datos_contacto }
    end
  end

  def new
    @datos_contacto = DatosContacto.new

    respond_to do |format|
      format.html
      format.json { render json: @datos_contacto }
    end
  end


  def edit
  end


  def create
    @datos_contacto = DatosContacto.new(params[:datos_contacto])

    respond_to do |format|
      if @datos_contacto.save
        format.html { redirect_to @datos_contacto, notice: 'Se ha creado satisfactoriamente.' }
        format.json { render json: @datos_contacto, status: :created, location: @datos_contacto }
      else
        format.html { render action: "new" }
        format.json { render json: @datos_contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    respond_to do |format|
      if @datos_contacto.update_attributes(params[:datos_contacto])
        format.html { redirect_to @datos_contacto, notice: 'Se ha modificado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @datos_contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @datos_contacto.destroy

    respond_to do |format|
      format.html { redirect_to datos_contactos_url }
      format.json { head :no_content }
    end
  end

  private
  def find_datos_contacto
      @datos_contacto = DatosContacto.find(params[:id]) if params[:id]
  end

end
