class DisenosController < ApplicationController
  # GET /disenos
  # GET /disenos.json
  def index
    @disenos = Diseno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disenos }
    end
  end

  # GET /disenos/1
  # GET /disenos/1.json
  def show
    @diseno = Diseno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diseno }
    end
  end

  # GET /disenos/new
  # GET /disenos/new.json
  def new
    @diseno = Diseno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diseno }
    end
  end

  # GET /disenos/1/edit
  def edit
    @diseno = Diseno.find(params[:id])
  end

  # POST /disenos
  # POST /disenos.json
  def create
    @diseno = Diseno.new(params[:diseno])

    respond_to do |format|
      if @diseno.save
        format.html { redirect_to @diseno, notice: 'Se ha creado satisfactoriamente.' }
        format.json { render json: @diseno, status: :created, location: @diseno }
      else
        format.html { render action: "new" }
        format.json { render json: @diseno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disenos/1
  # PUT /disenos/1.json
  def update
    @diseno = Diseno.find(params[:id])

    respond_to do |format|
      if @diseno.update_attributes(params[:diseno])
        format.html { redirect_to @diseno, notice: 'Se ha modificado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diseno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disenos/1
  # DELETE /disenos/1.json
  def destroy
    @diseno = Diseno.find(params[:id])
    @diseno.destroy

    respond_to do |format|
      format.html { redirect_to disenos_url }
      format.json { head :no_content }
    end
  end
end
