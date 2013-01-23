class PresupuestoMensualsController < ApplicationController
before_filter :autenticacion
  # GET /empresas
  # GET /empresas.json
  def index
    @presupuesto_mensuals = PresupuestoMensual.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presupuesto_mensuals }
    end
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @presupuesto_mensual = PresupuestoMensual.find(params[:id])
    @items = Item.includes(:forma_de_pago_al_contados=>:moneda, :forma_de_pago_al_creditos=>:moneda).where(:monedas => {:id => @presupuesto_mensual.moneda})
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @presupuesto_mensual }
    end
  end
  
  # GET /empresas/1/ejecucion
  # GET /empresas/1/ejecucion.json
  def ejecucion
    @presupuesto_mensual = PresupuestoMensual.find(params[:id])
    respond_to do |format|
      format.html # ejecucion.html.erb
      format.json { render json: @presupuesto_mensual }
    end
  end

  # GET /empresas/new
  # GET /empresas/new.json
  def new
    @presupuesto_mensual = PresupuestoMensual.new
    @tipo_de_presupuestos = TipoDePresupuesto.all 
    @monedas = Moneda.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @presupuesto_mensual }
    end
  end

  # GET /empresas/1/edit
  def edit
    @presupuesto_mensual = PresupuestoMensual.find(params[:id])
    @tipo_de_presupuestos = TipoDePresupuesto.all 
    @monedas = Moneda.all
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @presupuesto_mensual = PresupuestoMensual.new(params[:presupuesto_mensual])

    respond_to do |format|
      if @presupuesto_mensual.save
        format.html { redirect_to @presupuesto_mensual, notice: 'Presupuesto mensual was successfully created.' }
        format.json { render json: @presupuesto_mensual, status: :created, location: @presupuesto_mensual }
      else
        format.html { render action: "new" }
        format.json { render json: @presupuesto_mensual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /empresas/1
  # PUT /empresas/1.json
  def update
    @presupuesto_mensual = PresupuestoMensual.find(params[:id])

    respond_to do |format|
      if @presupuesto_mensual.update_attributes(params[:empresa])
        format.html { redirect_to @presupuesto_mensual, notice: 'Presupuesto mensual was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @presupuesto_mensual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @presupuesto_mensual = PresupuestoMensual.find(params[:id])
    @presupuesto_mensual.destroy

    respond_to do |format|
      format.html { redirect_to empresas_url }
      format.json { head :ok }
    end
  end
end
