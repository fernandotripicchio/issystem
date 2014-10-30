class Proveedor < ActiveRecord::Base
   attr_accessible :razon_social, :cuit, :direccion
   validates :razon_social, :direccion, :cuit,:presence => true
   
   has_many :registro_prestaciones
   
   searchable do
    text :razon_social, :cuit
    string  :sort_title do
      razon_social.downcase.gsub(/^(an?|the)/, '')
    end
  end     
end
