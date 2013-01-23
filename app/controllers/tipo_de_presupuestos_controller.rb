class TipoDePresupuestosController < ApplicationController
before_filter :autenticacion
  # GET /tipo_de_presupuestos
  # GET /tipo_de_presupuestos.json
  def index
    @tipo_de_presupuestos = TipoDePresupuesto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_presupuestos }
    end
  end

  # GET /tipo_de_presupuestos/1
  # GET /tipo_de_presupuestos/1.json
  def show
    @tipo_de_presupuesto = TipoDePresupuesto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_presupuesto }
    end
  end

  # GET /tipo_de_presupuestos/new
  # GET /tipo_de_presupuestos/new.json
  def new
    @tipo_de_presupuesto = TipoDePresupuesto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_presupuesto }
    end
  end

  # GET /tipo_de_presupuestos/1/edit
  def edit
    @tipo_de_presupuesto = TipoDePresupuesto.find(params[:id])
  end

  # POST /tipo_de_presupuestos
  # POST /tipo_de_presupuestos.json
  def create
    @tipo_de_presupuesto = TipoDePresupuesto.new(params[:tipo_de_presupuesto])

    respond_to do |format|
      if @tipo_de_presupuesto.save
        format.html { redirect_to @tipo_de_presupuesto, notice: 'Tipo de presupuesto was successfully created.' }
        format.json { render json: @tipo_de_presupuesto, status: :created, location: @tipo_de_presupuesto }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_presupuestos/1
  # PUT /tipo_de_presupuestos/1.json
  def update
    @tipo_de_presupuesto = TipoDePresupuesto.find(params[:id])

    respond_to do |format|
      if @tipo_de_presupuesto.update_attributes(params[:tipo_de_presupuesto])
        format.html { redirect_to @tipo_de_presupuesto, notice: 'Tipo de presupuesto was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_presupuestos/1
  # DELETE /tipo_de_presupuestos/1.json
  def destroy
    @tipo_de_presupuesto = TipoDePresupuesto.find(params[:id])
    @tipo_de_presupuesto.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_presupuestos_url }
      format.json { head :ok }
    end
  end
end
