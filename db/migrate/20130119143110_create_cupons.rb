class CreateCupons < ActiveRecord::Migration
  def change
    create_table :cupons do |t|
      t.string :nombre
      t.integer :precio_normal
      t.integer :precio_dcto
      t.text :descripcion
      t.datetime :validez
      t.integer :stock
      t.string :foto, :default => "/img/cupon.png"

      t.timestamps
    end
  end
end
