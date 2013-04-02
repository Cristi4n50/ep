class SolicitudsController < ApplicationController

  before_filter :find_datos_contacto_solicituds 

  def index
    @solicituds = Solicitud.all

    respond_to do |format|
      format.html 
      format.json { render json: @solicituds }
    end
  end


  def show

    respond_to do |format|
      format.html 
      format.json { render json: @solicitud }
    end
  end

  def new
    @solicitud = Solicitud.new

    respond_to do |format|
      format.html 
      format.json { render json: @solicitud }
    end
  end

  def edit

  end

  def create
    @solicitud = @datos_contacto.solicituds.build(params[:solicitud]) 

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to @solicitud, notice: 'Se ha creado satisfactoriamente.' }
        format.json { render json: @solicitud, status: :created, location: @solicitud }
      else
        format.html { render action: "new" }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    respond_to do |format|
      if @solicitud.update_attributes(params[:solicitud])
        format.html { redirect_to @solicitud, notice: 'Se ha modificado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @solicitud.destroy

    respond_to do |format|
      format.html { redirect_to solicituds_url }
      format.json { head :no_content }
    end
  end
  private 
  def find_datos_contacto_solicituds  
      @datos_contacto = DatosContacto.find(params[:datos_contacto_id]) 
      @solicitud = Solicitud.find(params[:id]) if params[:id] 
  end

end
