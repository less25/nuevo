class CreateClientes < ActiveRecord::Migration[7.2]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
