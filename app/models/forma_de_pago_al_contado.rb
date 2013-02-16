class FormaDePagoAlContado < ActiveRecord::Base
  belongs_to :tipo_de_forma_de_pago
  belongs_to :financiador
  belongs_to :moneda
  has_and_belongs_to_many :items
  validates_presence_of :nombre
  validates_presence_of :tipo_de_forma_de_pago_id
  validates_presence_of :financiador_id
  validates_presence_of :moneda_id
end
