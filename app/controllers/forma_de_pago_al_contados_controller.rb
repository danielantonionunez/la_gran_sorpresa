class FormaDePagoAlContadosController < ApplicationController
before_filter :autenticacion
  # GET /forma_de_pago_al_contados
  # GET /forma_de_pago_al_contados.json
  def index
    @forma_de_pago_al_contados = FormaDePagoAlContado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forma_de_pago_al_contados }
    end
  end

  # GET /forma_de_pago_al_contados/1
  # GET /forma_de_pago_al_contados/1.json
  def show
    @forma_de_pago_al_contado = FormaDePagoAlContado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forma_de_pago_al_contado }
    end
  end

  # GET /forma_de_pago_al_contados/new
  # GET /forma_de_pago_al_contados/new.json
  def new
    @forma_de_pago_al_contado = FormaDePagoAlContado.new
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all 
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forma_de_pago_al_contado }
    end
  end

  # GET /forma_de_pago_al_contados/1/edit
  def edit
    @forma_de_pago_al_contado = FormaDePagoAlContado.find(params[:id])
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all
  end

  # POST /forma_de_pago_al_contados
  # POST /forma_de_pago_al_contados.json
  def create
    @forma_de_pago_al_contado = FormaDePagoAlContado.new(params[:forma_de_pago_al_contado])
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all
    
    respond_to do |format|
      if @forma_de_pago_al_contado.save
        format.html { redirect_to @forma_de_pago_al_contado, notice: 'Forma de pago al contado was successfully created.' }
        format.json { render json: @forma_de_pago_al_contado, status: :created, location: @forma_de_pago_al_contado }
      else
        format.html { render action: "new" }
        format.json { render json: @forma_de_pago_al_contado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forma_de_pago_al_contados/1
  # PUT /forma_de_pago_al_contados/1.json
  def update
    @forma_de_pago_al_contado = FormaDePagoAlContado.find(params[:id])
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all
    
    respond_to do |format|
      if @forma_de_pago_al_contado.update_attributes(params[:forma_de_pago_al_contado])
        format.html { redirect_to @forma_de_pago_al_contado, notice: 'Forma de pago al contado was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @forma_de_pago_al_contado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forma_de_pago_al_contados/1
  # DELETE /forma_de_pago_al_contados/1.json
  def destroy
    @forma_de_pago_al_contado = FormaDePagoAlContado.find(params[:id])
    @forma_de_pago_al_contado.destroy

    respond_to do |format|
      format.html { redirect_to forma_de_pago_al_contados_url }
      format.json { head :ok }
    end
  end
end
