class DatosContacto < ActiveRecord::Base
  has_many :solicitudes
  attr_accessible :apellido, :direccion, :email, :movil, :nombre, :telefono
end

