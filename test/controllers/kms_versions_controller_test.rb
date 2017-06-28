require 'test_helper'

class KmsVersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kms_version = kms_versions(:one)
  end

  test "should get index" do
    get kms_versions_url
    assert_response :success
  end

  test "should get new" do
    get new_kms_version_url
    assert_response :success
  end

  test "should create kms_version" do
    assert_difference('KmsVersion.count') do
      post kms_versions_url, params: { kms_version: { version: @kms_version.version } }
    end

    assert_redirected_to kms_version_url(KmsVersion.last)
  end

  test "should show kms_version" do
    get kms_version_url(@kms_version)
    assert_response :success
  end

  test "should get edit" do
    get edit_kms_version_url(@kms_version)
    assert_response :success
  end

  test "should update kms_version" do
    patch kms_version_url(@kms_version), params: { kms_version: { version: @kms_version.version } }
    assert_redirected_to kms_version_url(@kms_version)
  end

  test "should destroy kms_version" do
    assert_difference('KmsVersion.count', -1) do
      delete kms_version_url(@kms_version)
    end

    assert_redirected_to kms_versions_url
  end
end
