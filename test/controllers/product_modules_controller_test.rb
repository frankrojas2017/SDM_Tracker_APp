require 'test_helper'

class ProductModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_module = product_modules(:one)
  end

  test "should get index" do
    get product_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_product_module_url
    assert_response :success
  end

  test "should create product_module" do
    assert_difference('ProductModule.count') do
      post product_modules_url, params: { product_module: { customer_id_id: @product_module.customer_id_id, module_name: @product_module.module_name, po_number_id: @product_module.po_number_id } }
    end

    assert_redirected_to product_module_url(ProductModule.last)
  end

  test "should show product_module" do
    get product_module_url(@product_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_module_url(@product_module)
    assert_response :success
  end

  test "should update product_module" do
    patch product_module_url(@product_module), params: { product_module: { customer_id_id: @product_module.customer_id_id, module_name: @product_module.module_name, po_number_id: @product_module.po_number_id } }
    assert_redirected_to product_module_url(@product_module)
  end

  test "should destroy product_module" do
    assert_difference('ProductModule.count', -1) do
      delete product_module_url(@product_module)
    end

    assert_redirected_to product_modules_url
  end
end
