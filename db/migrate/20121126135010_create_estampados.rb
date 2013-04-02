class CreateEstampados < ActiveRecord::Migration
  def change
    create_table :estampados do |t|
      t.date :fecha_envio
      t.date :fecha_llegada

      t.timestamps
    end
  end
end
