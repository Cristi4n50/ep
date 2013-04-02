class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.string :num_cedula
      t.string :usuario
      t.string :clave
      t.string :email
      t.date :fecha_nac

      t.timestamps
    end
  end
end
