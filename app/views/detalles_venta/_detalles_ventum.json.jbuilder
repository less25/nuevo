json.extract! detalles_ventum, :id, :venta_id, :producto_id, :cantidad, :precio_unitario, :subtotal, :created_at, :updated_at
json.url detalles_ventum_url(detalles_ventum, format: :json)
