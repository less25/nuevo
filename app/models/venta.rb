class Venta < ApplicationRecord
  belongs_to :cliente
  has_many :detalles_ventas
  has_one :envio
end
