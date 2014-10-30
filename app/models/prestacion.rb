class Prestacion < ActiveRecord::Base
  attr_accessible :nombre
  has_many :registro_prestaciones
end
