require "application_system_test_case"

class DetallesVentaTest < ApplicationSystemTestCase
  setup do
    @detalles_ventum = detalles_venta(:one)
  end

  test "visiting the index" do
    visit detalles_venta_url
    assert_selector "h1", text: "Detalles venta"
  end

  test "should create detalles ventum" do
    visit detalles_venta_url
    click_on "New detalles ventum"

    fill_in "Cantidad", with: @detalles_ventum.cantidad
    fill_in "Precio unitario", with: @detalles_ventum.precio_unitario
    fill_in "Producto", with: @detalles_ventum.producto_id
    fill_in "Subtotal", with: @detalles_ventum.subtotal
    fill_in "Venta", with: @detalles_ventum.venta_id
    click_on "Create Detalles ventum"

    assert_text "Detalles ventum was successfully created"
    click_on "Back"
  end

  test "should update Detalles ventum" do
    visit detalles_ventum_url(@detalles_ventum)
    click_on "Edit this detalles ventum", match: :first

    fill_in "Cantidad", with: @detalles_ventum.cantidad
    fill_in "Precio unitario", with: @detalles_ventum.precio_unitario
    fill_in "Producto", with: @detalles_ventum.producto_id
    fill_in "Subtotal", with: @detalles_ventum.subtotal
    fill_in "Venta", with: @detalles_ventum.venta_id
    click_on "Update Detalles ventum"

    assert_text "Detalles ventum was successfully updated"
    click_on "Back"
  end

  test "should destroy Detalles ventum" do
    visit detalles_ventum_url(@detalles_ventum)
    click_on "Destroy this detalles ventum", match: :first

    assert_text "Detalles ventum was successfully destroyed"
  end
end
