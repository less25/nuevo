class CreateDetallesVenta < ActiveRecord::Migration[7.2]
  def change
    create_table :detalles_venta do |t|
      t.integer :venta_id
      t.integer :producto_id
      t.integer :cantidad
      t.decimal :precio_unitario
      t.decimal :subtotal

      t.timestamps
    end
  end
end
