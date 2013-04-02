class CreateDatosContactos < ActiveRecord::Migration
  def change
    create_table :datos_contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :direccion
      t.string :movil
      t.string :email

      t.timestamps
    end
  end
end
