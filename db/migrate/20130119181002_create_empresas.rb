class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :logo, :default => "/img/empresa.png"

      t.timestamps
    end
  end
end
