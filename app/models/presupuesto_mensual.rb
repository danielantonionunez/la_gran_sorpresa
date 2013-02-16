class PresupuestoMensual < ActiveRecord::Base
  belongs_to :tipo_de_presupuesto
  belongs_to :moneda
  has_many :ingreso_presupuesto_mensuals
  has_many :egreso_presupuesto_mensuals
  validates_presence_of :periodo
  validates_presence_of :moneda_id
  validates_presence_of :tipo_de_presupuesto_id
end
