class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.integer :tipo_identificacion
      t.string :nro_identificacion
      t.integer :tipo_cliente
      t.references :agencia, index: true

      t.timestamps
    end
  end
end
