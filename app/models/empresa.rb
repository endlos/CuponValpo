class Empresa < ActiveRecord::Base
  attr_accessible :logo, :nombre

  has_many :cupons, :dependent => :destroy
end
