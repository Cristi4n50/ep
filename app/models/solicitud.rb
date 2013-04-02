class Solicitud < ActiveRecord::Base
  belongs_to :datos_contactos
  belongs_to :producciones
  belongs_to :disenos
  belongs_to :bordados
  belongs_to :estampados
  has_one :nota	
  attr_accessible :cantidad, :cliente, :dias_faltantes, :fecha_aprobacion, :fecha_entrega_cliente, :fecha_solicitud, :instructor, :producto, :producto, :resolucion, :saldo, :total, :unidades_entregadas
  validates :cantidad, :presence => true
  validates :cliente, :presence => true
  validates :dias_faltantes, :presence => true
  validates :fecha_aprobacion, :presence => true
  validates :fecha_entrega_cliente, :presence => true
  validates :fecha_solicitud, :presence => true
  validates :instructor, :presence => true
  validates :producto, :presence => true
  validates :producto, :presence => true
  validates :resolucion, :presence => true
  validates :saldo, :presence => true
  validates :total, :presence => true
  validates :unidades_entregadas, :presence => true
end

