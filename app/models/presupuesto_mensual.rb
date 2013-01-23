class PresupuestoMensual < ActiveRecord::Base
  belongs_to :tipo_de_presupuesto
  belongs_to :moneda
  has_many :ingreso_presupuesto_mensuals
  has_many :egreso_presupuesto_mensuals
end
