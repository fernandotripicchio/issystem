class Localidad < ActiveRecord::Base
  attr_accessible :provincia, :departamento, :localidad, :nombre
end
