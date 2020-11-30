require 'test_helper'

class VolonteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volonteer = volonteers(:one)
  end

  test "should get index" do
    get volonteers_url
    assert_response :success
  end

  test "should get new" do
    get new_volonteer_url
    assert_response :success
  end

  test "should create volonteer" do
    assert_difference('Volonteer.count') do
      post volonteers_url, params: { volonteer: { name: @volonteer.name } }
    end

    assert_redirected_to volonteer_url(Volonteer.last)
  end

  test "should show volonteer" do
    get volonteer_url(@volonteer)
    assert_response :success
  end

  test "should get edit" do
    get edit_volonteer_url(@volonteer)
    assert_response :success
  end

  test "should update volonteer" do
    patch volonteer_url(@volonteer), params: { volonteer: { name: @volonteer.name } }
    assert_redirected_to volonteer_url(@volonteer)
  end

  test "should destroy volonteer" do
    assert_difference('Volonteer.count', -1) do
      delete volonteer_url(@volonteer)
    end

    assert_redirected_to volonteers_url
  end
end
