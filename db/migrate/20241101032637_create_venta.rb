class CreateVenta < ActiveRecord::Migration[7.2]
  def change
    create_table :ventas do |t|
      t.integer :cliente_id
      t.date :fecha
      t.decimal :total
      t.string :metodo_pago
      t.string :estado

      t.timestamps
    end
  end
end
