class Cupon < ActiveRecord::Base
  attr_accessible :descripcion, :foto, :nombre, :precio_dcto, :precio_normal, :stock, :validez, :empresa_id

  belongs_to :empresa  
end
