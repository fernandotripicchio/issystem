class Prestacion < ActiveRecord::Base
  attr_accessible :nombre, :tipo_prestacion_id
  has_many :registro_prestaciones
  belongs_to :tipo_prestacion
  belongs_to :proveedor
  belongs_to :afiliado
  
end
