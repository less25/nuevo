require "test_helper"

class DetallesVentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalles_ventum = detalles_venta(:one)
  end

  test "should get index" do
    get detalles_venta_url
    assert_response :success
  end

  test "should get new" do
    get new_detalles_ventum_url
    assert_response :success
  end

  test "should create detalles_ventum" do
    assert_difference("DetallesVentum.count") do
      post detalles_venta_url, params: { detalles_ventum: { cantidad: @detalles_ventum.cantidad, precio_unitario: @detalles_ventum.precio_unitario, producto_id: @detalles_ventum.producto_id, subtotal: @detalles_ventum.subtotal, venta_id: @detalles_ventum.venta_id } }
    end

    assert_redirected_to detalles_ventum_url(DetallesVentum.last)
  end

  test "should show detalles_ventum" do
    get detalles_ventum_url(@detalles_ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalles_ventum_url(@detalles_ventum)
    assert_response :success
  end

  test "should update detalles_ventum" do
    patch detalles_ventum_url(@detalles_ventum), params: { detalles_ventum: { cantidad: @detalles_ventum.cantidad, precio_unitario: @detalles_ventum.precio_unitario, producto_id: @detalles_ventum.producto_id, subtotal: @detalles_ventum.subtotal, venta_id: @detalles_ventum.venta_id } }
    assert_redirected_to detalles_ventum_url(@detalles_ventum)
  end

  test "should destroy detalles_ventum" do
    assert_difference("DetallesVentum.count", -1) do
      delete detalles_ventum_url(@detalles_ventum)
    end

    assert_redirected_to detalles_venta_url
  end
end
