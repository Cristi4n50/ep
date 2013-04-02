class Diseno < ActiveRecord::Base
  has_many :solicitudes
  attr_accessible :color, :corte, :talla
end
