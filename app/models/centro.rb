class Centro < ActiveRecord::Base
  attr_accessible :codigo, :nombre
  has_many :incucais
end
