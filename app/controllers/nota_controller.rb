class NotaController < ApplicationController
  # GET /nota
  # GET /nota.json
  def index
    @nota = Notum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nota }
    end
  end

  # GET /nota/1
  # GET /nota/1.json
  def show
    @notum = Notum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notum }
    end
  end

  # GET /nota/new
  # GET /nota/new.json
  def new
    @notum = Notum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notum }
    end
  end

  # GET /nota/1/edit
  def edit
    @notum = Notum.find(params[:id])
  end

  # POST /nota
  # POST /nota.json
  def create
    @notum = Notum.new(params[:notum])

    respond_to do |format|
      if @notum.save
        format.html { redirect_to @notum, notice: 'Notum was successfully created.' }
        format.json { render json: @notum, status: :created, location: @notum }
      else
        format.html { render action: "new" }
        format.json { render json: @notum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nota/1
  # PUT /nota/1.json
  def update
    @notum = Notum.find(params[:id])

    respond_to do |format|
      if @notum.update_attributes(params[:notum])
        format.html { redirect_to @notum, notice: 'Notum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota/1
  # DELETE /nota/1.json
  def destroy
    @notum = Notum.find(params[:id])
    @notum.destroy

    respond_to do |format|
      format.html { redirect_to nota_url }
      format.json { head :no_content }
    end
  end
end
