class RegistroCompra < ActiveRecord::Base
  has_one :nota
  attr_accessible :descripcion_producto, :valor_total, :valor_unidad
  validates :descripcion_producto, :presence => true
  validates :valor_total, :presence => true
  validates :valor_unidad, :presence => true
end
