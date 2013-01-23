class Seccion < ActiveRecord::Base
  belongs_to :empresa
  has_many :elementos, :dependent=>:destroy
  validates_presence_of :nombre
  validates_presence_of :empresa_id
  validates_uniqueness_of :nombre, :scope => :empresa_id
end