class Item < ActiveRecord::Base
  has_and_belongs_to_many :forma_de_pago_al_contados
  has_and_belongs_to_many :forma_de_pago_al_creditos
  validates_presence_of :nombre
  validates_uniqueness_of :nombre
end
