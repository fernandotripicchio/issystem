class RegistroPrestacion < ActiveRecord::Base
  attr_accessible :prestacion_id, :fecha_factura, :numero_factura, :periodo, 
                  :proveedor_id, :anio, :observaciones
                  
   validates :fecha_factura, :numero_factura, :periodo, :presence => true               
   belongs_to :prestador
   belongs_to :prestacion
end
