class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.integer :items
      t.integer :unidad
      t.references :tipo
      t.string :num_documento_recibe

      t.timestamps
    end
    add_index :nota, :tipo_id
  end
end
