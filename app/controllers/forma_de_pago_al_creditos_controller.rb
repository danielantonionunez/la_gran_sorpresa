class FormaDePagoAlCreditosController < ApplicationController
before_filter :autenticacion
  # GET /forma_de_pago_al_creditos
  # GET /forma_de_pago_al_creditos.json
  def index
    @forma_de_pago_al_creditos = FormaDePagoAlCredito.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forma_de_pago_al_creditos }
    end
  end

  # GET /forma_de_pago_al_creditos/1
  # GET /forma_de_pago_al_creditos/1.json
  def show
    @forma_de_pago_al_credito = FormaDePagoAlCredito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forma_de_pago_al_credito }
    end
  end

  # GET /forma_de_pago_al_creditos/new
  # GET /forma_de_pago_al_creditos/new.json
  def new
    @forma_de_pago_al_credito = FormaDePagoAlCredito.new
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all 
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forma_de_pago_al_credito }
    end
  end

  # GET /forma_de_pago_al_creditos/1/edit
  def edit
    @forma_de_pago_al_credito = FormaDePagoAlCredito.find(params[:id])
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all 
  end

  # POST /forma_de_pago_al_creditos
  # POST /forma_de_pago_al_creditos.json
  def create
    @forma_de_pago_al_credito = FormaDePagoAlCredito.new(params[:forma_de_pago_al_credito])
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all
    
    respond_to do |format|
      if @forma_de_pago_al_credito.save
        format.html { redirect_to @forma_de_pago_al_credito, notice: 'Forma de pago al credito was successfully created.' }
        format.json { render json: @forma_de_pago_al_credito, status: :created, location: @forma_de_pago_al_credito }
      else
        format.html { render action: "new" }
        format.json { render json: @forma_de_pago_al_credito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forma_de_pago_al_creditos/1
  # PUT /forma_de_pago_al_creditos/1.json
  def update
    @forma_de_pago_al_credito = FormaDePagoAlCredito.find(params[:id])
    @tipo_de_forma_de_pago = TipoDeFormaDePago.all 
    @financiador = Financiador.all 
    @moneda = Moneda.all
    
    respond_to do |format|
      if @forma_de_pago_al_credito.update_attributes(params[:forma_de_pago_al_credito])
        format.html { redirect_to @forma_de_pago_al_credito, notice: 'Forma de pago al credito was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @forma_de_pago_al_credito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forma_de_pago_al_creditos/1
  # DELETE /forma_de_pago_al_creditos/1.json
  def destroy
    @forma_de_pago_al_credito = FormaDePagoAlCredito.find(params[:id])
    @forma_de_pago_al_credito.destroy

    respond_to do |format|
      format.html { redirect_to forma_de_pago_al_creditos_url }
      format.json { head :ok }
    end
  end
end
