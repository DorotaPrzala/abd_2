require 'test_helper'

class ClassVariablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_variable = class_variables(:one)
  end

  test "should get index" do
    get class_variables_url
    assert_response :success
  end

  test "should get new" do
    get new_class_variable_url
    assert_response :success
  end

  test "should create class_variable" do
    assert_difference('ClassVariable.count') do
      post class_variables_url, params: { class_variable: { orders_number: @class_variable.orders_number } }
    end

    assert_redirected_to class_variable_url(ClassVariable.last)
  end

  test "should show class_variable" do
    get class_variable_url(@class_variable)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_variable_url(@class_variable)
    assert_response :success
  end

  test "should update class_variable" do
    patch class_variable_url(@class_variable), params: { class_variable: { orders_number: @class_variable.orders_number } }
    assert_redirected_to class_variable_url(@class_variable)
  end

  test "should destroy class_variable" do
    assert_difference('ClassVariable.count', -1) do
      delete class_variable_url(@class_variable)
    end

    assert_redirected_to class_variables_url
  end
end
