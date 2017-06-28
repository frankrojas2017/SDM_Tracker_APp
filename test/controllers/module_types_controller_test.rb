require 'test_helper'

class ModuleTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @module_type = module_types(:one)
  end

  test "should get index" do
    get module_types_url
    assert_response :success
  end

  test "should get new" do
    get new_module_type_url
    assert_response :success
  end

  test "should create module_type" do
    assert_difference('ModuleType.count') do
      post module_types_url, params: { module_type: { name: @module_type.name } }
    end

    assert_redirected_to module_type_url(ModuleType.last)
  end

  test "should show module_type" do
    get module_type_url(@module_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_module_type_url(@module_type)
    assert_response :success
  end

  test "should update module_type" do
    patch module_type_url(@module_type), params: { module_type: { name: @module_type.name } }
    assert_redirected_to module_type_url(@module_type)
  end

  test "should destroy module_type" do
    assert_difference('ModuleType.count', -1) do
      delete module_type_url(@module_type)
    end

    assert_redirected_to module_types_url
  end
end
