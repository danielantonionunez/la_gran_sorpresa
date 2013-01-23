class MonedasController < ApplicationController
before_filter :autenticacion
  # GET /monedas
  # GET /monedas.json
  def index
    @monedas = Moneda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monedas }
    end
  end

  # GET /monedas/1
  # GET /monedas/1.json
  def show
    @moneda = Moneda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @moneda }
    end
  end

  # GET /monedas/new
  # GET /monedas/new.json
  def new
    @moneda = Moneda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @moneda }
    end
  end

  # GET /monedas/1/edit
  def edit
    @moneda = Moneda.find(params[:id])
  end

  # POST /monedas
  # POST /monedas.json
  def create
    @moneda = Moneda.new(params[:moneda])

    respond_to do |format|
      if @moneda.save
        format.html { redirect_to @moneda, notice: 'Moneda was successfully created.' }
        format.json { render json: @moneda, status: :created, location: @moneda }
      else
        format.html { render action: "new" }
        format.json { render json: @moneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monedas/1
  # PUT /monedas/1.json
  def update
    @moneda = Moneda.find(params[:id])

    respond_to do |format|
      if @moneda.update_attributes(params[:moneda])
        format.html { redirect_to @moneda, notice: 'Moneda was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @moneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monedas/1
  # DELETE /monedas/1.json
  def destroy
    @moneda = Moneda.find(params[:id])
    @moneda.destroy

    respond_to do |format|
      format.html { redirect_to monedas_url }
      format.json { head :ok }
    end
  end
end
