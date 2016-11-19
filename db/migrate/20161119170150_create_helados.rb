class CreateHelados < ActiveRecord::Migration[5.0]
  def change
    create_table :helados do |t|
      t.string :nombre
      t.string :descripcion
      t.string :foto
      t.float :precio

      t.timestamps
    end
  end
end
