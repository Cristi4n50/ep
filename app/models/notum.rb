class Notum < ActiveRecord::Base
  belongs_to :tipo
  attr_accessible :items, :num_documento_recibe, :unidad, :tipo_id
  validates :items, :presence => true
  validates :num_documento_recibe, :presence => true
  validates :unidad, :presence => true
end
