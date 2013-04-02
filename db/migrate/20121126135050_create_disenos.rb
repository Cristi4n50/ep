class CreateDisenos < ActiveRecord::Migration
  def change
    create_table :disenos do |t|
      t.string :color
      t.string :talla
      t.string :corte

      t.timestamps
    end
  end
end
