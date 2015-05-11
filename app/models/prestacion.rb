class Prestacion < ActiveRecord::Base
  attr_accessible :user_id, :proveedor_id, :tipo_prestacion_id, :afiliado_id
  attr_accessible :monto_factura, :periodo_anio, :periodo_mes  
  
  belongs_to :user
  belongs_to :proveedor
  belongs_to :tipo_prestacion
  belongs_to :afiliado
  
end
