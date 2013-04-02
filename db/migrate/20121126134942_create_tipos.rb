class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :nombre
      t.string :sigla

      t.timestamps
    end
  end
end
