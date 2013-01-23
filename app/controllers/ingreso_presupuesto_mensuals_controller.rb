class IngresoPresupuestoMensualsController < ApplicationController
before_filter :autenticacion
  def create
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @ingreso_presupuesto_mensual = @presupuesto_mensual.ingreso_presupuesto_mensuals.create(params[:ingreso_presupuesto_mensual])
    redirect_to presupuesto_mensual_path(@presupuesto_mensual)
  end
  def destroy
    @presupuesto_mensual = PresupuestoMensual.find(params[:presupuesto_mensual_id])
    @ingreso_presupuesto_mensual = @presupuesto_mensual.ingreso_presupuesto_mensuals.find(params[:id])
    @ingreso_presupuesto_mensual.destroy
    redirect_to presupuesto_mensual_path(@presupuesto_mensual)
  end
end
