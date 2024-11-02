class CreateEnvios < ActiveRecord::Migration[7.2]
  def change
    create_table :envios do |t|
      t.integer :venta_id
      t.string :direccion_envio
      t.date :fecha_envio
      t.string :estado

      t.timestamps
    end
  end
end
