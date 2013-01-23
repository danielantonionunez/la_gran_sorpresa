class Rol < ActiveRecord::Base
	has_and_belongs_to_many :usuarios
	has_and_belongs_to_many :elementos
	validates_presence_of :nombre
	validates_uniqueness_of :nombre
end