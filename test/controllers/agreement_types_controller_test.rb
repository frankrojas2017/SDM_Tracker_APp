require 'test_helper'

class AgreementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agreement_type = agreement_types(:one)
  end

  test "should get index" do
    get agreement_types_url
    assert_response :success
  end

  test "should get new" do
    get new_agreement_type_url
    assert_response :success
  end

  test "should create agreement_type" do
    assert_difference('AgreementType.count') do
      post agreement_types_url, params: { agreement_type: { name: @agreement_type.name } }
    end

    assert_redirected_to agreement_type_url(AgreementType.last)
  end

  test "should show agreement_type" do
    get agreement_type_url(@agreement_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_agreement_type_url(@agreement_type)
    assert_response :success
  end

  test "should update agreement_type" do
    patch agreement_type_url(@agreement_type), params: { agreement_type: { name: @agreement_type.name } }
    assert_redirected_to agreement_type_url(@agreement_type)
  end

  test "should destroy agreement_type" do
    assert_difference('AgreementType.count', -1) do
      delete agreement_type_url(@agreement_type)
    end

    assert_redirected_to agreement_types_url
  end
end
