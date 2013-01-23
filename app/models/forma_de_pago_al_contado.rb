class FormaDePagoAlContado < ActiveRecord::Base
  belongs_to :tipo_de_forma_de_pago
  belongs_to :financiador
  belongs_to :moneda
  has_and_belongs_to_many :items
end
