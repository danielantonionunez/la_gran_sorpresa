class Empresa < ActiveRecord::Base
has_many :usuarios, :dependent=>:destroy
has_many :seccions, :dependent=>:destroy
validates_presence_of :nombre
validates_uniqueness_of :nombre
end
