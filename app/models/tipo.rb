class Tipo < ActiveRecord::Base
  has_many :nota	
  attr_accessible :nombre, :sigla
end