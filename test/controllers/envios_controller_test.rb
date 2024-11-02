require "test_helper"

class EnviosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @envio = envios(:one)
  end

  test "should get index" do
    get envios_url
    assert_response :success
  end

  test "should get new" do
    get new_envio_url
    assert_response :success
  end

  test "should create envio" do
    assert_difference("Envio.count") do
      post envios_url, params: { envio: { direccion_envio: @envio.direccion_envio, estado: @envio.estado, fecha_envio: @envio.fecha_envio, venta_id: @envio.venta_id } }
    end

    assert_redirected_to envio_url(Envio.last)
  end

  test "should show envio" do
    get envio_url(@envio)
    assert_response :success
  end

  test "should get edit" do
    get edit_envio_url(@envio)
    assert_response :success
  end

  test "should update envio" do
    patch envio_url(@envio), params: { envio: { direccion_envio: @envio.direccion_envio, estado: @envio.estado, fecha_envio: @envio.fecha_envio, venta_id: @envio.venta_id } }
    assert_redirected_to envio_url(@envio)
  end

  test "should destroy envio" do
    assert_difference("Envio.count", -1) do
      delete envio_url(@envio)
    end

    assert_redirected_to envios_url
  end
end
