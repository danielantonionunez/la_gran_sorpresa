class IngresoPresupuestoMensual < ActiveRecord::Base
  belongs_to :item
  belongs_to :presupuesto_mensual
  has_many :ejecucion_ingresos, :dependent => :destroy
  validates_presence_of :precio
  validates_presence_of :item_id
end
