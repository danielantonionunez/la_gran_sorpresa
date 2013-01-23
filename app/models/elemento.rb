class Elemento < ActiveRecord::Base
  belongs_to :seccion
  has_and_belongs_to_many :rols
  validates_presence_of :nombre
  validates_presence_of :controlador
  validates_presence_of :seccion_id
end
