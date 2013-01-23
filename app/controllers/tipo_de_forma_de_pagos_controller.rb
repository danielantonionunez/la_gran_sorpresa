class TipoDeFormaDePagosController < ApplicationController
before_filter :autenticacion
  # GET /tipo_de_forma_de_pagos
  # GET /tipo_de_forma_de_pagos.json
  def index
    @tipo_de_forma_de_pagos = TipoDeFormaDePago.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_forma_de_pagos }
    end
  end

  # GET /tipo_de_forma_de_pagos/1
  # GET /tipo_de_forma_de_pagos/1.json
  def show
    @tipo_de_forma_de_pago = TipoDeFormaDePago.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_forma_de_pago }
    end
  end

  # GET /tipo_de_forma_de_pagos/new
  # GET /tipo_de_forma_de_pagos/new.json
  def new
    @tipo_de_forma_de_pago = TipoDeFormaDePago.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_forma_de_pago }
    end
  end

  # GET /tipo_de_forma_de_pagos/1/edit
  def edit
    @tipo_de_forma_de_pago = TipoDeFormaDePago.find(params[:id])
  end

  # POST /tipo_de_forma_de_pagos
  # POST /tipo_de_forma_de_pagos.json
  def create
    @tipo_de_forma_de_pago = TipoDeFormaDePago.new(params[:tipo_de_forma_de_pago])

    respond_to do |format|
      if @tipo_de_forma_de_pago.save
        format.html { redirect_to @tipo_de_forma_de_pago, notice: 'Tipo de forma de pago was successfully created.' }
        format.json { render json: @tipo_de_forma_de_pago, status: :created, location: @tipo_de_forma_de_pago }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_forma_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_forma_de_pagos/1
  # PUT /tipo_de_forma_de_pagos/1.json
  def update
    @tipo_de_forma_de_pago = TipoDeFormaDePago.find(params[:id])

    respond_to do |format|
      if @tipo_de_forma_de_pago.update_attributes(params[:tipo_de_forma_de_pago])
        format.html { redirect_to @tipo_de_forma_de_pago, notice: 'Tipo de forma de pago was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_forma_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_forma_de_pagos/1
  # DELETE /tipo_de_forma_de_pagos/1.json
  def destroy
    @tipo_de_forma_de_pago = TipoDeFormaDePago.find(params[:id])
    @tipo_de_forma_de_pago.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_forma_de_pagos_url }
      format.json { head :ok }
    end
  end
end
