class EgresoPresupuestoMensualsController < ApplicationController
before_filter :autenticacion
  def create
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @egreso_presupuesto_mensual = @presupuesto_mensual.egreso_presupuesto_mensuals.create(params[:egreso_presupuesto_mensual])
    redirect_to presupuesto_mensual_path(@presupuesto_mensual)
  end
  def destroy
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @egreso_presupuesto_mensual = @presupuesto_mensual.egreso_presupuesto_mensuals.find(params[:id])
    @egreso_presupuesto_mensual.destroy
    redirect_to presupuesto_mensual_path(@presupuesto_mensual)
  end
end
