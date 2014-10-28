class Proveedor < ActiveRecord::Base
   attr_accessible :razon_social, :cuit, :direccion
   validates :razon_social, :direccion, :cuit,:presence => true
end
