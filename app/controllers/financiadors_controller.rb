class FinanciadorsController < ApplicationController
before_filter :autenticacion
  # GET /financiadors
  # GET /financiadors.json
  def index
    @financiadors = Financiador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financiadors }
	  format.xml { render xml: @financiadors }
    end
  end

  # GET /financiadors/1
  # GET /financiadors/1.json
  def show
    @financiador = Financiador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financiador }
    end
  end

  # GET /financiadors/new
  # GET /financiadors/new.json
  def new
    @financiador = Financiador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financiador }
    end
  end

  # GET /financiadors/1/edit
  def edit
    @financiador = Financiador.find(params[:id])
  end

  # POST /financiadors
  # POST /financiadors.json
  def create
    @financiador = Financiador.new(params[:financiador])

    respond_to do |format|
      if @financiador.save
        format.html { redirect_to @financiador, notice: 'Financiador was successfully created.' }
        format.json { render json: @financiador, status: :created, location: @financiador }
      else
        format.html { render action: "new" }
        format.json { render json: @financiador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financiadors/1
  # PUT /financiadors/1.json
  def update
    @financiador = Financiador.find(params[:id])

    respond_to do |format|
      if @financiador.update_attributes(params[:financiador])
        format.html { redirect_to @financiador, notice: 'Financiador was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @financiador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financiadors/1
  # DELETE /financiadors/1.json
  def destroy
    @financiador = Financiador.find(params[:id])
    @financiador.destroy

    respond_to do |format|
      format.html { redirect_to financiadors_url }
      format.json { head :ok }
    end
  end
end
