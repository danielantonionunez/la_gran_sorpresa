class EjecucionIngresosController < ApplicationController
before_filter :autenticacion
  def create
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @ingreso_presupuesto_mensual = @presupuesto_mensual.ingreso_presupuesto_mensuals.find(params[:ingreso_presupuesto_mensual_id])
    @ejecucion_ingreso = @ingreso_presupuesto_mensual.ejecucion_ingresos.create(params[:ejecucion_ingreso])
    redirect_to ejecucion_presupuesto_mensual_path(@presupuesto_mensual)
  end
  def destroy
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @ingreso_presupuesto_mensual = @presupuesto_mensual.ingreso_presupuesto_mensuals.find(params[:ingreso_presupuesto_mensual_id])
    @ejecucion_ingreso = @ingreso_presupuesto_mensual.ejecucion_ingresos.find(params[:id])
    @ejecucion_ingreso.destroy
    redirect_to ejecucion_presupuesto_mensual_path(@presupuesto_mensual)
  end
end