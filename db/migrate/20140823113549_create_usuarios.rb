class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :tipo_identificacion
      t.string :nro_identificacion
      t.string :email
      t.integer :tipo_usuario
      t.references :agencia, index: true

      t.timestamps
    end
  end
end
