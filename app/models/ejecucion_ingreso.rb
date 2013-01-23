class EjecucionIngreso < ActiveRecord::Base
  belongs_to :forma_de_pago_al_contado
  belongs_to :forma_de_pago_al_credito
  belongs_to :ingreso_presupuesto_mensual
  validates_presence_of :precio
end
