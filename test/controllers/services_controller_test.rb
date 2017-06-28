require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { CRM_Number: @service.CRM_Number, Service_type: @service.Service_type, annual_increase: @service.annual_increase, price: @service.price, quantity: @service.quantity, quote_number_id: @service.quote_number_id, service_total: @service.service_total, term_end: @service.term_end, term_length: @service.term_length, term_start: @service.term_start } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { CRM_Number: @service.CRM_Number, Service_type: @service.Service_type, annual_increase: @service.annual_increase, price: @service.price, quantity: @service.quantity, quote_number_id: @service.quote_number_id, service_total: @service.service_total, term_end: @service.term_end, term_length: @service.term_length, term_start: @service.term_start } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
