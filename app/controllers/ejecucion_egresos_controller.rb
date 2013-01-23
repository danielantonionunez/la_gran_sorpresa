class EjecucionEgresosController < ApplicationController
before_filter :autenticacion
  def create
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @egreso_presupuesto_mensual = @presupuesto_mensual.egreso_presupuesto_mensuals.find(params[:egreso_presupuesto_mensual_id])
    @ejecucion_egreso = @egreso_presupuesto_mensual.ejecucion_egresos.create(params[:ejecucion_egreso])
    #manejo de error
    #render :text => @ejecucion_egreso.methods
    #render ejecucion_presupuesto_mensual_path(@presupuesto_mensual)
    #render "../presupuesto_mensuals/ejecucion"
    redirect_to ejecucion_presupuesto_mensual_path(@presupuesto_mensual)
  end
  def destroy
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @egreso_presupuesto_mensual = @presupuesto_mensual.egreso_presupuesto_mensuals.find(params[:egreso_presupuesto_mensual_id])
    @ejecucion_egreso = @egreso_presupuesto_mensual.ejecucion_egresos.find(params[:id])
    @ejecucion_egreso.destroy
    redirect_to ejecucion_presupuesto_mensual_path(@presupuesto_mensual)
  end
end
