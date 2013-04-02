class Usuario < ActiveRecord::Base
  attr_accessible :apellido1, :apellido2, :clave, :email, :fecha_nac, :nombre1, :nombre2, :num_cedula, :usuario
end
