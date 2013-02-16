class Moneda < ActiveRecord::Base
validates_presence_of :nombre
validates_uniqueness_of :nombre
validates_presence_of :simbolo
end
