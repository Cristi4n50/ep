class Bordado < ActiveRecord::Base
  has_many :solicitudes
  attr_accessible :fecha_envio, :fecha_llegada
end
