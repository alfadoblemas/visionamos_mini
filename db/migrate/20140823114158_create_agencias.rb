class CreateAgencias < ActiveRecord::Migration
  def change
    create_table :agencias do |t|
      t.string :nombre
      t.string :direccion
      t.string :nit
      t.string :telefono
      t.integer :estado
      t.string :nombre_director

      t.timestamps
    end
  end
end
