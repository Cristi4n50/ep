class CreateRegistroCompras < ActiveRecord::Migration
  def change
    create_table :registro_compras do |t|
      t.string :descripcion_producto
      t.integer :valor_unidad
      t.integer :valor_total

      t.timestamps
    end
  end
end
