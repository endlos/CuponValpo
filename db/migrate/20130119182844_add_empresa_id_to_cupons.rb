class AddEmpresaIdToCupons < ActiveRecord::Migration
  def change
    add_column :cupons, :empresa_id, :integer
  end
end
