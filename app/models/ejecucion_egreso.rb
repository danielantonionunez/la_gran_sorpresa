class EjecucionEgreso < ActiveRecord::Base
  belongs_to :forma_de_pago_al_contado
  belongs_to :forma_de_pago_al_credito
  belongs_to :egreso_presupuesto_mensual
  validates_presence_of :precio
end
