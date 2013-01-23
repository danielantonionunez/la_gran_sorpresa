class ElementosController < ApplicationController
before_filter :authenticate
  # GET /elementos
  # GET /elementos.json
  def index
    @elementos = Elemento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @elementos }
    end
  end

  # GET /elementos/1
  # GET /elementos/1.json
  def show
    @elemento = Elemento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @elemento }
    end
  end

  # GET /elementos/new
  # GET /elementos/new.json
  def new
    @elemento = Elemento.new
    @rol = Rol.all
    @empresa=Empresa.joins(:seccions).select("distinct empresas.id, empresas.nombre")
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @elemento }
    end
  end

  # GET /elementos/1/edit
  def edit
    @elemento = Elemento.find(params[:id])
    @rol = Rol.all
    @empresa=Empresa.joins(:seccions).select("distinct empresas.id, empresas.nombre")
  end

  # POST /elementos
  # POST /elementos.json
  def create
    @elemento = Elemento.new(params[:elemento])

    respond_to do |format|
      if @elemento.save
        format.html { redirect_to @elemento, notice: 'Elemento was successfully created.' }
        format.json { render json: @elemento, status: :created, location: @elemento }
      else
        format.html { render action: "new" }
        format.json { render json: @elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /elementos/1
  # PUT /elementos/1.json
  def update
    @elemento = Elemento.find(params[:id])

    respond_to do |format|
      if @elemento.update_attributes(params[:elemento])
        format.html { redirect_to @elemento, notice: 'Elemento was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elementos/1
  # DELETE /elementos/1.json
  def destroy
    @elemento = Elemento.find(params[:id])
    @elemento.destroy

    respond_to do |format|
      format.html { redirect_to elementos_url }
      format.json { head :ok }
    end
  end
end
