class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.string :cliente
      t.date :fecha_solicitud
      t.string :resolucion
      t.string :producto
      t.integer :cantidad
      t.date :fecha_aprobacion
      t.string :instructor
      t.string :producto
      t.integer :dias_faltantes
      t.integer :unidades_entregadas
      t.integer :saldo
      t.date :fecha_entrega_cliente
      t.integer :total

      t.timestamps
    end
  end
end
