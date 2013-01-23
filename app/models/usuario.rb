class Usuario < ActiveRecord::Base
    belongs_to :empresa
    validates_presence_of :nombreusuario
    validates_presence_of :clave
    validates_presence_of :nombre
    validates_presence_of :apellidopaterno
    validates_presence_of :apellidomaterno
    validates_presence_of :empresa_id
    validates_uniqueness_of :nombreusuario
    has_and_belongs_to_many :rols
    def nombre_completo
        [nombre,apellidopaterno,apellidomaterno].join(" ").strip
    end
end
